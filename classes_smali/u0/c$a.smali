.class public final Lu0/c$a;
.super Ljava/lang/Object;
.source "EmojiInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .registers 12

    sget-object v0, Landroidx/emoji2/text/f;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_fb

    if-nez p0, :cond_a

    goto/16 :goto_fb

    :cond_a
    if-ltz p2, :cond_fb

    if-gez p3, :cond_10

    goto/16 :goto_fb

    :cond_10
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_22

    if-eq v3, v4, :cond_22

    if-eq v2, v3, :cond_20

    goto :goto_22

    :cond_20
    move v5, v0

    goto :goto_23

    :cond_22
    :goto_22
    move v5, v1

    :goto_23
    if-eqz v5, :cond_27

    goto/16 :goto_fb

    :cond_27
    if-eqz p4, :cond_b1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ltz v2, :cond_68

    if-ge p4, v2, :cond_36

    goto :goto_68

    :cond_36
    if-gez p2, :cond_39

    goto :goto_68

    :cond_39
    :goto_39
    move p4, v0

    :goto_3a
    if-nez p2, :cond_3d

    goto :goto_69

    :cond_3d
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_46

    if-eqz p4, :cond_44

    goto :goto_68

    :cond_44
    move v2, v0

    goto :goto_69

    :cond_46
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_56

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_53

    goto :goto_68

    :cond_53
    add-int/lit8 p2, p2, -0x1

    goto :goto_39

    :cond_56
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5f

    add-int/lit8 p2, p2, -0x1

    goto :goto_3a

    :cond_5f
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_66

    goto :goto_68

    :cond_66
    move p4, v1

    goto :goto_3a

    :cond_68
    :goto_68
    move v2, v4

    :goto_69
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ltz v3, :cond_ab

    if-ge p3, v3, :cond_76

    goto :goto_ab

    :cond_76
    if-gez p2, :cond_79

    goto :goto_ab

    :cond_79
    :goto_79
    move p4, v0

    :goto_7a
    if-nez p2, :cond_7e

    move p3, v3

    goto :goto_ac

    :cond_7e
    if-lt v3, p3, :cond_83

    if-eqz p4, :cond_ac

    goto :goto_ab

    :cond_83
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_95

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_90

    goto :goto_ab

    :cond_90
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_95
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_a0

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    :cond_a0
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_a7

    goto :goto_ab

    :cond_a7
    add-int/lit8 v3, v3, 0x1

    move p4, v1

    goto :goto_7a

    :cond_ab
    :goto_ab
    move p3, v4

    :cond_ac
    :goto_ac
    if-eq v2, v4, :cond_fb

    if-ne p3, v4, :cond_bf

    goto :goto_fb

    :cond_b1
    sub-int/2addr v2, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_bf
    const-class p2, Landroidx/emoji2/text/k;

    invoke-interface {p1, v2, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/emoji2/text/k;

    if-eqz p2, :cond_fb

    array-length p4, p2

    if-lez p4, :cond_fb

    array-length p4, p2

    move v3, v0

    :goto_ce
    if-ge v3, p4, :cond_e5

    aget-object v4, p2, v3

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_ce

    :cond_e5
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v0, v1

    :cond_fb
    :goto_fb
    return v0
.end method
