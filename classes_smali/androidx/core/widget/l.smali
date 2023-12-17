.class public final Landroidx/core/widget/l;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"

# interfaces
.implements Lm0/w;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lm0/c;)Lm0/c;
    .registers 12

    .line 1
    const-string v0, "ReceiveContent"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1d

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v2, "onReceive: "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_1d
    iget-object v0, p2, Lm0/c;->a:Lm0/c$e;

    .line 32
    invoke-interface {v0}, Lm0/c$e;->d()I

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x2

    .line 37
    if-ne v0, v1, :cond_27

    .line 39
    return-object p2

    .line 40
    :cond_27
    iget-object v0, p2, Lm0/c;->a:Lm0/c$e;

    .line 42
    invoke-interface {v0}, Lm0/c$e;->a()Landroid/content/ClipData;

    .line 45
    move-result-object v0

    .line 46
    iget-object p2, p2, Lm0/c;->a:Lm0/c$e;

    .line 48
    invoke-interface {p2}, Lm0/c$e;->b()I

    .line 51
    move-result p2

    .line 52
    check-cast p1, Landroid/widget/TextView;

    .line 54
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/text/Editable;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    move-result-object p1

    .line 64
    const/4 v2, 0x0

    .line 65
    move v3, v2

    .line 66
    move v4, v3

    .line 67
    :goto_42
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    .line 70
    move-result v5

    .line 71
    if-ge v3, v5, :cond_99

    .line 73
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 76
    move-result-object v5

    .line 77
    const/4 v6, 0x1

    .line 78
    and-int/lit8 v7, p2, 0x1

    .line 80
    if-eqz v7, :cond_5e

    .line 82
    invoke-virtual {v5, p1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 85
    move-result-object v5

    .line 86
    instance-of v7, v5, Landroid/text/Spanned;

    .line 88
    if-eqz v7, :cond_62

    .line 90
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 93
    move-result-object v5

    .line 94
    goto :goto_62

    .line 95
    :cond_5e
    invoke-virtual {v5, p1}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    .line 98
    move-result-object v5

    .line 99
    :cond_62
    :goto_62
    if-eqz v5, :cond_96

    .line 101
    if-nez v4, :cond_86

    .line 103
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 106
    move-result v4

    .line 107
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 110
    move-result v7

    .line 111
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 114
    move-result v8

    .line 115
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 118
    move-result v8

    .line 119
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 122
    move-result v4

    .line 123
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 126
    move-result v4

    .line 127
    invoke-static {v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 130
    invoke-interface {v1, v8, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 133
    move v4, v6

    .line 134
    goto :goto_96

    .line 135
    :cond_86
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 138
    move-result v6

    .line 139
    const-string v7, "\n"

    .line 141
    invoke-interface {v1, v6, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 144
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 147
    move-result v6

    .line 148
    invoke-interface {v1, v6, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 151
    :cond_96
    :goto_96
    add-int/lit8 v3, v3, 0x1

    .line 153
    goto :goto_42

    .line 154
    :cond_99
    const/4 p1, 0x0

    .line 155
    return-object p1
.end method
