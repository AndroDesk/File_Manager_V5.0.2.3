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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .registers 12

    .line 1
    sget-object v0, Landroidx/emoji2/text/f;->i:Ljava/lang/Object;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p1, :cond_fb

    .line 7
    if-nez p0, :cond_a

    .line 9
    goto/16 :goto_fb

    .line 11
    :cond_a
    if-ltz p2, :cond_fb

    .line 13
    if-gez p3, :cond_10

    .line 15
    goto/16 :goto_fb

    .line 17
    :cond_10
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 20
    move-result v2

    .line 21
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 24
    move-result v3

    .line 25
    const/4 v4, -0x1

    .line 26
    if-eq v2, v4, :cond_22

    .line 28
    if-eq v3, v4, :cond_22

    .line 30
    if-eq v2, v3, :cond_20

    .line 32
    goto :goto_22

    .line 33
    :cond_20
    move v5, v0

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    :goto_22
    move v5, v1

    .line 36
    :goto_23
    if-eqz v5, :cond_27

    .line 38
    goto/16 :goto_fb

    .line 40
    :cond_27
    if-eqz p4, :cond_b1

    .line 42
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result p2

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 49
    move-result p4

    .line 50
    if-ltz v2, :cond_68

    .line 52
    if-ge p4, v2, :cond_36

    .line 54
    goto :goto_68

    .line 55
    :cond_36
    if-gez p2, :cond_39

    .line 57
    goto :goto_68

    .line 58
    :cond_39
    :goto_39
    move p4, v0

    .line 59
    :goto_3a
    if-nez p2, :cond_3d

    .line 61
    goto :goto_69

    .line 62
    :cond_3d
    add-int/lit8 v2, v2, -0x1

    .line 64
    if-gez v2, :cond_46

    .line 66
    if-eqz p4, :cond_44

    .line 68
    goto :goto_68

    .line 69
    :cond_44
    move v2, v0

    .line 70
    goto :goto_69

    .line 71
    :cond_46
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 74
    move-result v5

    .line 75
    if-eqz p4, :cond_56

    .line 77
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 80
    move-result p4

    .line 81
    if-nez p4, :cond_53

    .line 83
    goto :goto_68

    .line 84
    :cond_53
    add-int/lit8 p2, p2, -0x1

    .line 86
    goto :goto_39

    .line 87
    :cond_56
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 90
    move-result v6

    .line 91
    if-nez v6, :cond_5f

    .line 93
    add-int/lit8 p2, p2, -0x1

    .line 95
    goto :goto_3a

    .line 96
    :cond_5f
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 99
    move-result p4

    .line 100
    if-eqz p4, :cond_66

    .line 102
    goto :goto_68

    .line 103
    :cond_66
    move p4, v1

    .line 104
    goto :goto_3a

    .line 105
    :cond_68
    :goto_68
    move v2, v4

    .line 106
    :goto_69
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    .line 109
    move-result p2

    .line 110
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 113
    move-result p3

    .line 114
    if-ltz v3, :cond_ab

    .line 116
    if-ge p3, v3, :cond_76

    .line 118
    goto :goto_ab

    .line 119
    :cond_76
    if-gez p2, :cond_79

    .line 121
    goto :goto_ab

    .line 122
    :cond_79
    :goto_79
    move p4, v0

    .line 123
    :goto_7a
    if-nez p2, :cond_7e

    .line 125
    move p3, v3

    .line 126
    goto :goto_ac

    .line 127
    :cond_7e
    if-lt v3, p3, :cond_83

    .line 129
    if-eqz p4, :cond_ac

    .line 131
    goto :goto_ab

    .line 132
    :cond_83
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 135
    move-result v5

    .line 136
    if-eqz p4, :cond_95

    .line 138
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 141
    move-result p4

    .line 142
    if-nez p4, :cond_90

    .line 144
    goto :goto_ab

    .line 145
    :cond_90
    add-int/lit8 p2, p2, -0x1

    .line 147
    add-int/lit8 v3, v3, 0x1

    .line 149
    goto :goto_79

    .line 150
    :cond_95
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    .line 153
    move-result v6

    .line 154
    if-nez v6, :cond_a0

    .line 156
    add-int/lit8 p2, p2, -0x1

    .line 158
    add-int/lit8 v3, v3, 0x1

    .line 160
    goto :goto_7a

    .line 161
    :cond_a0
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 164
    move-result p4

    .line 165
    if-eqz p4, :cond_a7

    .line 167
    goto :goto_ab

    .line 168
    :cond_a7
    add-int/lit8 v3, v3, 0x1

    .line 170
    move p4, v1

    .line 171
    goto :goto_7a

    .line 172
    :cond_ab
    :goto_ab
    move p3, v4

    .line 173
    :cond_ac
    :goto_ac
    if-eq v2, v4, :cond_fb

    .line 175
    if-ne p3, v4, :cond_bf

    .line 177
    goto :goto_fb

    .line 178
    :cond_b1
    sub-int/2addr v2, p2

    .line 179
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 182
    move-result v2

    .line 183
    add-int/2addr v3, p3

    .line 184
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 187
    move-result p2

    .line 188
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    .line 191
    move-result p3

    .line 192
    :cond_bf
    const-class p2, Landroidx/emoji2/text/k;

    .line 194
    invoke-interface {p1, v2, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 197
    move-result-object p2

    .line 198
    check-cast p2, [Landroidx/emoji2/text/k;

    .line 200
    if-eqz p2, :cond_fb

    .line 202
    array-length p4, p2

    .line 203
    if-lez p4, :cond_fb

    .line 205
    array-length p4, p2

    .line 206
    move v3, v0

    .line 207
    :goto_ce
    if-ge v3, p4, :cond_e5

    .line 209
    aget-object v4, p2, v3

    .line 211
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 214
    move-result v5

    .line 215
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 218
    move-result v4

    .line 219
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 222
    move-result v2

    .line 223
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    .line 226
    move-result p3

    .line 227
    add-int/lit8 v3, v3, 0x1

    .line 229
    goto :goto_ce

    .line 230
    :cond_e5
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 233
    move-result p2

    .line 234
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 237
    move-result p4

    .line 238
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 241
    move-result p3

    .line 242
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 245
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 248
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 251
    move v0, v1

    .line 252
    :cond_fb
    :goto_fb
    return v0
.end method
