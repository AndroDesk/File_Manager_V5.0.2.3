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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/o;Landroidx/emoji2/text/f$i;Landroidx/emoji2/text/d;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/emoji2/text/j;->a:Landroidx/emoji2/text/f$i;

    iput-object p1, p0, Landroidx/emoji2/text/j;->b:Landroidx/emoji2/text/o;

    iput-object p3, p0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/f$d;

    return-void
.end method

.method public static a(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .registers 10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    return v1

    :cond_e
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_20

    if-eq v2, v3, :cond_20

    if-eq p1, v2, :cond_1e

    goto :goto_20

    :cond_1e
    move v3, v1

    goto :goto_21

    :cond_20
    :goto_20
    move v3, v0

    :goto_21
    if-eqz v3, :cond_24

    return v1

    :cond_24
    const-class v3, Landroidx/emoji2/text/k;

    invoke-interface {p0, p1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/k;

    if-eqz v2, :cond_52

    array-length v3, v2

    if-lez v3, :cond_52

    array-length v3, v2

    move v4, v1

    :goto_33
    if-ge v4, v3, :cond_52

    aget-object v5, v2, v4

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eqz p2, :cond_43

    if-eq v6, p1, :cond_4b

    :cond_43
    if-nez p2, :cond_47

    if-eq v5, p1, :cond_4b

    :cond_47
    if-le p1, v6, :cond_4f

    if-ge p1, v5, :cond_4f

    :cond_4b
    invoke-interface {p0, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v0

    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_52
    return v1
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/i;)Z
    .registers 12

    iget v0, p4, Landroidx/emoji2/text/i;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_5a

    iget-object v0, p0, Landroidx/emoji2/text/j;->c:Landroidx/emoji2/text/f$d;

    invoke-virtual {p4}, Landroidx/emoji2/text/i;->c()Lt0/a;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lt0/c;->a(I)I

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v6, v4, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget v4, v4, Lt0/c;->a:I

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_1d
    check-cast v0, Landroidx/emoji2/text/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/emoji2/text/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_32
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_3b
    if-ge p2, p3, :cond_47

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    :cond_47
    iget-object p1, v0, Landroidx/emoji2/text/d;->a:Landroid/text/TextPaint;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, Lf0/g;->a:I

    invoke-static {p1, p2}, Lf0/g$a;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_57

    move p1, v2

    goto :goto_58

    :cond_57
    move p1, v3

    :goto_58
    iput p1, p4, Landroidx/emoji2/text/i;->c:I

    :cond_5a
    iget p1, p4, Landroidx/emoji2/text/i;->c:I

    if-ne p1, v2, :cond_5f

    move v1, v3

    :cond_5f
    return v1
.end method
