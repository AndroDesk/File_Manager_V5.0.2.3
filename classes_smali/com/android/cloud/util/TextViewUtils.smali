.class public Lcom/android/cloud/util/TextViewUtils;
.super Ljava/lang/Object;
.source "TextViewUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setFirstLineColor(Landroid/widget/TextView;I)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "\n"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 14
    move-result v1

    .line 15
    if-gtz v1, :cond_14

    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 20
    move-result v1

    .line 21
    :cond_14
    new-instance v2, Landroid/text/SpannableString;

    .line 23
    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 26
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 28
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 31
    const/4 p1, 0x0

    .line 32
    const/16 v3, 0x22

    .line 34
    invoke-virtual {v2, v0, p1, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 37
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

.method public static setUrlSpan(Landroid/widget/TextView;ZI)V
    .registers 12

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    .line 13
    move-result v1

    .line 14
    const-class v2, Landroid/text/style/URLSpan;

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, [Landroid/text/style/URLSpan;

    .line 23
    array-length v2, v1

    .line 24
    move v4, v3

    .line 25
    :goto_18
    if-ge v4, v2, :cond_36

    .line 27
    aget-object v5, v1, v4

    .line 29
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    .line 32
    move-result v6

    .line 33
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    .line 36
    move-result v7

    .line 37
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 40
    new-instance v8, Lcom/android/cloud/util/TextViewUtils$1;

    .line 42
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-direct {v8, v5, p1, p2}, Lcom/android/cloud/util/TextViewUtils$1;-><init>(Ljava/lang/String;ZI)V

    .line 49
    invoke-virtual {v0, v8, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 52
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_18

    .line 55
    :cond_36
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
