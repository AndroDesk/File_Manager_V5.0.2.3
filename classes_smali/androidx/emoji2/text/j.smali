.class public final Landroidx/emoji2/text/j;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/j$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/text/f$i;

.field public final b:Landroidx/emoji2/text/o;

.field public c:Landroidx/emoji2/text/f$d;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/o;Landroidx/emoji2/text/f$i;Landroidx/emoji2/text/d;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/f$i;

    .line 6
    iput-object p1, p0, Landroidx/emoji2/text/j;->b:Landroidx/emoji2/text/o;

    .line 8
    iput-object p3, p0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/f$d;

    .line 10
    return-void
.end method

.method public static a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .registers 10

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x1

    .line 10
    xor-int/2addr p1, v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_e

    .line 14
    return v1

    .line 15
    :cond_e
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 18
    move-result p1

    .line 19
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 22
    move-result v2

    .line 23
    const/4 v3, -0x1

    .line 24
    if-eq p1, v3, :cond_20

    .line 26
    if-eq v2, v3, :cond_20

    .line 28
    if-eq p1, v2, :cond_1e

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    move v3, v1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    :goto_20
    move v3, v0

    .line 34
    :goto_21
    if-eqz v3, :cond_24

    .line 36
    return v1

    .line 37
    :cond_24
    const-class v3, Landroidx/emoji2/text/k;

    .line 39
    invoke-interface {p0, p1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, [Landroidx/emoji2/text/k;

    .line 45
    if-eqz v2, :cond_52

    .line 47
    array-length v3, v2

    .line 48
    if-lez v3, :cond_52

    .line 50
    array-length v3, v2

    .line 51
    move v4, v1

    .line 52
    :goto_33
    if-ge v4, v3, :cond_52

    .line 54
    aget-object v5, v2, v4

    .line 56
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 59
    move-result v6

    .line 60
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 63
    move-result v5

    .line 64
    if-eqz p2, :cond_43

    .line 66
    if-eq v6, p1, :cond_4b

    .line 68
    :cond_43
    if-nez p2, :cond_47

    .line 70
    if-eq v5, p1, :cond_4b

    .line 72
    :cond_47
    if-le p1, v6, :cond_4f

    .line 74
    if-ge p1, v5, :cond_4f

    .line 76
    :cond_4b
    invoke-interface {p0, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 79
    return v0

    .line 80
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    .line 82
    goto :goto_33

    .line 83
    :cond_52
    return v1
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/i;)Z
    .registers 12

    .line 1
    iget v0, p4, Landroidx/emoji2/text/i;->c:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-nez v0, :cond_5a

    .line 8
    iget-object v0, p0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/f$d;

    .line 10
    invoke-virtual {p4}, Landroidx/emoji2/text/i;->c()Lt0/a;

    .line 13
    move-result-object v4

    .line 14
    const/16 v5, 0x8

    .line 16
    invoke-virtual {v4, v5}, Lt0/c;->a(I)I

    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_1d

    .line 22
    iget-object v6, v4, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 24
    iget v4, v4, Lt0/c;->a:I

    .line 26
    add-int/2addr v5, v4

    .line 27
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 30
    :cond_1d
    check-cast v0, Landroidx/emoji2/text/d;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v4, Landroidx/emoji2/text/d;->b:Ljava/lang/ThreadLocal;

    .line 37
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    if-nez v5, :cond_32

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 51
    :cond_32
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 60
    :goto_3b
    if-ge p2, p3, :cond_47

    .line 62
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 65
    move-result v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 p2, p2, 0x1

    .line 71
    goto :goto_3b

    .line 72
    :cond_47
    iget-object p1, v0, Landroidx/emoji2/text/d;->a:Landroid/text/TextPaint;

    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 78
    sget p3, Lf0/g;->a:I

    .line 80
    invoke-static {p1, p2}, Lf0/g$a;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_57

    .line 86
    move p1, v2

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move p1, v3

    .line 89
    :goto_58
    iput p1, p4, Landroidx/emoji2/text/i;->c:I

    .line 91
    :cond_5a
    iget p1, p4, Landroidx/emoji2/text/i;->c:I

    .line 93
    if-ne p1, v2, :cond_5f

    .line 95
    move v1, v3

    .line 96
    :cond_5f
    return v1
.end method
