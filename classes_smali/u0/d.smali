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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/d;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9

    iget-object v0, p0, Lu0/d;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p1

    :cond_9
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/text/f;->b()I

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 p2, 0x3

    if-eq v0, p2, :cond_4c

    return-object p1

    :cond_1a
    const/4 v0, 0x0

    if-nez p6, :cond_2e

    if-nez p5, :cond_2e

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-nez p4, :cond_2e

    iget-object p4, p0, Lu0/d;->a:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p4

    if-ne p1, p4, :cond_2e

    move v1, v0

    :cond_2e
    if-eqz v1, :cond_4b

    if-eqz p1, :cond_4b

    if-nez p2, :cond_3b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ne p3, p4, :cond_3b

    goto :goto_3f

    :cond_3b
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_3f
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p2, v0, p3, p1}, Landroidx/emoji2/text/f;->f(IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_4b
    return-object p1

    :cond_4c
    invoke-static {}, Landroidx/emoji2/text/f;->a()Landroidx/emoji2/text/f;

    move-result-object p2

    iget-object p3, p0, Lu0/d;->b:Lu0/d$a;

    if-nez p3, :cond_5d

    new-instance p3, Lu0/d$a;

    iget-object p4, p0, Lu0/d;->a:Landroid/widget/TextView;

    invoke-direct {p3, p4, p0}, Lu0/d$a;-><init>(Landroid/widget/TextView;Lu0/d;)V

    iput-object p3, p0, Lu0/d;->b:Lu0/d$a;

    :cond_5d
    iget-object p3, p0, Lu0/d;->b:Lu0/d$a;

    invoke-virtual {p2, p3}, Landroidx/emoji2/text/f;->g(Landroidx/emoji2/text/f$e;)V

    return-object p1
.end method
