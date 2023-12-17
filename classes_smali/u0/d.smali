.class public final Lu0/d;
.super Ljava/lang/Object;
.source "EmojiInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Lu0/d$a;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lu0/d;->a:Landroid/widget/TextView;

    .line 6
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9

    .line 1
    iget-object v0, p0, Lu0/d;->a:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-object p1

    .line 10
    :cond_9
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/emoji2/text/f;->b()I

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_4c

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_1a

    .line 23
    const/4 p2, 0x3

    .line 24
    if-eq v0, p2, :cond_4c

    .line 26
    return-object p1

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    if-nez p6, :cond_2e

    .line 30
    if-nez p5, :cond_2e

    .line 32
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 35
    move-result p4

    .line 36
    if-nez p4, :cond_2e

    .line 38
    iget-object p4, p0, Lu0/d;->a:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 43
    move-result-object p4

    .line 44
    if-ne p1, p4, :cond_2e

    .line 46
    move v1, v0

    .line 47
    :cond_2e
    if-eqz v1, :cond_4b

    .line 49
    if-eqz p1, :cond_4b

    .line 51
    if-nez p2, :cond_3b

    .line 53
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 56
    move-result p4

    .line 57
    if-ne p3, p4, :cond_3b

    .line 59
    goto :goto_3f

    .line 60
    :cond_3b
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 63
    move-result-object p1

    .line 64
    :goto_3f
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 71
    move-result p3

    .line 72
    invoke-virtual {p2, v0, p3, p1}, Landroidx/emoji2/text/f;->f(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 75
    move-result-object p1

    .line 76
    :cond_4b
    return-object p1

    .line 77
    :cond_4c
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    .line 80
    move-result-object p2

    .line 81
    iget-object p3, p0, Lu0/d;->b:Lu0/d$a;

    .line 83
    if-nez p3, :cond_5d

    .line 85
    new-instance p3, Lu0/d$a;

    .line 87
    iget-object p4, p0, Lu0/d;->a:Landroid/widget/TextView;

    .line 89
    invoke-direct {p3, p4, p0}, Lu0/d$a;-><init>(Landroid/widget/TextView;Lu0/d;)V

    .line 92
    iput-object p3, p0, Lu0/d;->b:Lu0/d$a;

    .line 94
    :cond_5d
    iget-object p3, p0, Lu0/d;->b:Lu0/d$a;

    .line 96
    invoke-virtual {p2, p3}, Landroidx/emoji2/text/f;->g(Landroidx/emoji2/text/f$e;)V

    .line 99
    return-object p1
.end method
