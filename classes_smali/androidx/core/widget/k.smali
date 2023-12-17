.class public final Landroidx/core/widget/k;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/k$b;,
        Landroidx/core/widget/k$a;,
        Landroidx/core/widget/k$f;,
        Landroidx/core/widget/k$e;,
        Landroidx/core/widget/k$c;,
        Landroidx/core/widget/k$d;
    }
.end annotation


# direct methods
.method public static a(Landroid/widget/TextView;)Lk0/c$a;
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1c

    .line 5
    if-lt v0, v1, :cond_10

    .line 7
    new-instance v0, Lk0/c$a;

    .line 9
    invoke-static {p0}, Landroidx/core/widget/k$e;->b(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;

    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Lk0/c$a;-><init>(Landroid/text/PrecomputedText$Params;)V

    .line 16
    return-object v0

    .line 17
    :cond_10
    new-instance v2, Landroid/text/TextPaint;

    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 26
    sget-object v3, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 28
    invoke-static {p0}, Landroidx/core/widget/k$c;->a(Landroid/widget/TextView;)I

    .line 31
    move-result v3

    .line 32
    invoke-static {p0}, Landroidx/core/widget/k$c;->d(Landroid/widget/TextView;)I

    .line 35
    move-result v4

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 39
    move-result-object v5

    .line 40
    instance-of v5, v5, Landroid/text/method/PasswordTransformationMethod;

    .line 42
    if-eqz v5, :cond_2e

    .line 44
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 46
    goto :goto_84

    .line 47
    :cond_2e
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x1

    .line 49
    if-lt v0, v1, :cond_5d

    .line 51
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 54
    move-result v0

    .line 55
    and-int/lit8 v0, v0, 0xf

    .line 57
    const/4 v1, 0x3

    .line 58
    if-ne v0, v1, :cond_5d

    .line 60
    invoke-static {p0}, Landroidx/core/widget/k$b;->d(Landroid/widget/TextView;)Ljava/util/Locale;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Landroidx/core/widget/k$d;->a(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Landroidx/core/widget/k$e;->a(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    aget-object p0, p0, v5

    .line 74
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    .line 77
    move-result p0

    .line 78
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    .line 81
    move-result p0

    .line 82
    if-eq p0, v6, :cond_5a

    .line 84
    const/4 v0, 0x2

    .line 85
    if-ne p0, v0, :cond_57

    .line 87
    goto :goto_5a

    .line 88
    :cond_57
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 90
    goto :goto_84

    .line 91
    :cond_5a
    :goto_5a
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 93
    goto :goto_84

    .line 94
    :cond_5d
    invoke-static {p0}, Landroidx/core/widget/k$b;->b(Landroid/view/View;)I

    .line 97
    move-result v0

    .line 98
    if-ne v0, v6, :cond_64

    .line 100
    move v5, v6

    .line 101
    :cond_64
    invoke-static {p0}, Landroidx/core/widget/k$b;->c(Landroid/view/View;)I

    .line 104
    move-result p0

    .line 105
    packed-switch p0, :pswitch_data_8a

    .line 108
    if-eqz v5, :cond_82

    .line 110
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 112
    goto :goto_84

    .line 113
    :pswitch_70  #0x7
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 115
    goto :goto_84

    .line 116
    :pswitch_73  #0x6
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 118
    goto :goto_84

    .line 119
    :pswitch_76  #0x5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    .line 121
    goto :goto_84

    .line 122
    :pswitch_79  #0x4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 124
    goto :goto_84

    .line 125
    :pswitch_7c  #0x3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 127
    goto :goto_84

    .line 128
    :pswitch_7f  #0x2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 130
    goto :goto_84

    .line 131
    :cond_82
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 133
    :goto_84
    new-instance v0, Lk0/c$a;

    .line 135
    invoke-direct {v0, v2, p0, v3, v4}, Lk0/c$a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    .line 138
    return-object v0

    .line 139
    :pswitch_data_8a
    .packed-switch 0x2
        :pswitch_7f  #00000002
        :pswitch_7c  #00000003
        :pswitch_79  #00000004
        :pswitch_76  #00000005
        :pswitch_73  #00000006
        :pswitch_70  #00000007
    .end packed-switch
.end method

.method public static b(Landroid/widget/TextView;I)V
    .registers 5

    .line 1
    invoke-static {p1}, La/b;->n(I)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    const/16 v1, 0x1c

    .line 8
    if-lt v0, v1, :cond_d

    .line 10
    invoke-static {p0, p1}, Landroidx/core/widget/k$e;->c(Landroid/widget/TextView;I)V

    .line 13
    return-void

    .line 14
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0}, Landroidx/core/widget/k$a;->a(Landroid/widget/TextView;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1e

    .line 28
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 30
    goto :goto_20

    .line 31
    :cond_1e
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 33
    :goto_20
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 36
    move-result v1

    .line 37
    if-le p1, v1, :cond_36

    .line 39
    add-int/2addr p1, v0

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 43
    move-result v0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 47
    move-result v1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 51
    move-result v2

    .line 52
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    :cond_36
    return-void
.end method

.method public static c(Landroid/widget/TextView;I)V
    .registers 5

    .line 1
    invoke-static {p1}, La/b;->n(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {p0}, Landroidx/core/widget/k$a;->a(Landroid/widget/TextView;)Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_14

    .line 18
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 23
    :goto_16
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 26
    move-result v1

    .line 27
    if-le p1, v1, :cond_2c

    .line 29
    sub-int/2addr p1, v0

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 37
    move-result v1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 45
    :cond_2c
    return-void
.end method

.method public static d(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 3

    .line 1
    instance-of v0, p0, Landroidx/core/widget/k$f;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v1, 0x1a

    .line 9
    if-lt v0, v1, :cond_e

    .line 11
    check-cast p0, Landroidx/core/widget/k$f;

    .line 13
    iget-object p0, p0, Landroidx/core/widget/k$f;->a:Landroid/view/ActionMode$Callback;

    .line 15
    :cond_e
    return-object p0
.end method

.method public static e(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_17

    .line 7
    const/16 v1, 0x1b

    .line 9
    if-gt v0, v1, :cond_17

    .line 11
    instance-of v0, p0, Landroidx/core/widget/k$f;

    .line 13
    if-nez v0, :cond_17

    .line 15
    if-nez p0, :cond_11

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    new-instance v0, Landroidx/core/widget/k$f;

    .line 20
    invoke-direct {v0, p0, p1}, Landroidx/core/widget/k$f;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    .line 23
    return-object v0

    .line 24
    :cond_17
    :goto_17
    return-object p0
.end method
