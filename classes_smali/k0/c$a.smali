.class public final Lk0/c$a;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Landroid/text/TextDirectionHeuristic;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 14
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Lk0/c$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 15
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    iput v0, p0, Lk0/c$a;->c:I

    .line 16
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result p1

    iput p1, p0, Lk0/c$a;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1d

    .line 3
    new-instance v0, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v0, p1}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p4}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p2}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    .line 8
    :cond_1d
    iput-object p1, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 9
    iput-object p2, p0, Lk0/c$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 10
    iput p3, p0, Lk0/c$a;->c:I

    .line 11
    iput p4, p0, Lk0/c$a;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lk0/c$a;)Z
    .registers 5

    .line 1
    iget v0, p0, Lk0/c$a;->c:I

    .line 3
    iget v1, p1, Lk0/c$a;->c:I

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_8

    .line 8
    return v2

    .line 9
    :cond_8
    iget v0, p0, Lk0/c$a;->d:I

    .line 11
    iget v1, p1, Lk0/c$a;->d:I

    .line 13
    if-eq v0, v1, :cond_f

    .line 15
    return v2

    .line 16
    :cond_f
    iget-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    .line 21
    move-result v0

    .line 22
    iget-object v1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 24
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 27
    move-result v1

    .line 28
    cmpl-float v0, v0, v1

    .line 30
    if-eqz v0, :cond_20

    .line 32
    return v2

    .line 33
    :cond_20
    iget-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 35
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 38
    move-result v0

    .line 39
    iget-object v1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 41
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 44
    move-result v1

    .line 45
    cmpl-float v0, v0, v1

    .line 47
    if-eqz v0, :cond_31

    .line 49
    return v2

    .line 50
    :cond_31
    iget-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 55
    move-result v0

    .line 56
    iget-object v1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 58
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 61
    move-result v1

    .line 62
    cmpl-float v0, v0, v1

    .line 64
    if-eqz v0, :cond_42

    .line 66
    return v2

    .line 67
    :cond_42
    iget-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 72
    move-result v0

    .line 73
    iget-object v1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 78
    move-result v1

    .line 79
    cmpl-float v0, v0, v1

    .line 81
    if-eqz v0, :cond_53

    .line 83
    return v2

    .line 84
    :cond_53
    iget-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 92
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_66

    .line 102
    return v2

    .line 103
    :cond_66
    iget-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFlags()I

    .line 108
    move-result v0

    .line 109
    iget-object v1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 111
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    .line 114
    move-result v1

    .line 115
    if-eq v0, v1, :cond_75

    .line 117
    return v2

    .line 118
    :cond_75
    iget-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocales()Landroid/os/LocaleList;

    .line 123
    move-result-object v0

    .line 124
    iget-object v1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 126
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocales()Landroid/os/LocaleList;

    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_88

    .line 136
    return v2

    .line 137
    :cond_88
    iget-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 142
    move-result-object v0

    .line 143
    if-nez v0, :cond_99

    .line 145
    iget-object p1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_ac

    .line 153
    return v2

    .line 154
    :cond_99
    iget-object v0, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 159
    move-result-object v0

    .line 160
    iget-object p1, p1, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_ac

    .line 172
    return v2

    .line 173
    :cond_ac
    const/4 p1, 0x1

    .line 174
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lk0/c$a;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lk0/c$a;

    .line 13
    invoke-virtual {p0, p1}, Lk0/c$a;->a(Lk0/c$a;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_13

    .line 19
    return v2

    .line 20
    :cond_13
    iget-object v1, p0, Lk0/c$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 22
    iget-object p1, p1, Lk0/c$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 24
    if-eq v1, p1, :cond_1a

    .line 26
    return v2

    .line 27
    :cond_1a
    return v0
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    const/16 v0, 0xb

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x1

    .line 19
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 21
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    move-result-object v2

    .line 29
    aput-object v2, v0, v1

    .line 31
    const/4 v1, 0x2

    .line 32
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 34
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 37
    move-result v2

    .line 38
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    move-result-object v2

    .line 42
    aput-object v2, v0, v1

    .line 44
    const/4 v1, 0x3

    .line 45
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 47
    invoke-virtual {v2}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 50
    move-result v2

    .line 51
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    move-result-object v2

    .line 55
    aput-object v2, v0, v1

    .line 57
    const/4 v1, 0x4

    .line 58
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 60
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFlags()I

    .line 63
    move-result v2

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v2

    .line 68
    aput-object v2, v0, v1

    .line 70
    const/4 v1, 0x5

    .line 71
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 73
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextLocales()Landroid/os/LocaleList;

    .line 76
    move-result-object v2

    .line 77
    aput-object v2, v0, v1

    .line 79
    const/4 v1, 0x6

    .line 80
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 82
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 85
    move-result-object v2

    .line 86
    aput-object v2, v0, v1

    .line 88
    const/4 v1, 0x7

    .line 89
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 91
    invoke-virtual {v2}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    .line 94
    move-result v2

    .line 95
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    move-result-object v2

    .line 99
    aput-object v2, v0, v1

    .line 101
    const/16 v1, 0x8

    .line 103
    iget-object v2, p0, Lk0/c$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 105
    aput-object v2, v0, v1

    .line 107
    const/16 v1, 0x9

    .line 109
    iget v2, p0, Lk0/c$a;->c:I

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v2

    .line 115
    aput-object v2, v0, v1

    .line 117
    const/16 v1, 0xa

    .line 119
    iget v2, p0, Lk0/c$a;->d:I

    .line 121
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v2

    .line 125
    aput-object v2, v0, v1

    .line 127
    invoke-static {v0}, Ll0/b;->b([Ljava/lang/Object;)I

    .line 130
    move-result v0

    .line 131
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "textSize="

    .line 10
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 16
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v2, ", textScaleX="

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 42
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v2, ", textSkewX="

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 68
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 71
    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    const-string v2, ", letterSpacing="

    .line 86
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v2

    .line 90
    iget-object v3, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 92
    invoke-virtual {v3}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 95
    move-result v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    const-string v3, ", elegantTextHeight="

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v3, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 118
    invoke-virtual {v3}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    .line 121
    move-result v3

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v3, ", textLocale="

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v3, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 144
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocales()Landroid/os/LocaleList;

    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    const-string v3, ", typeface="

    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v3, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 170
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const/16 v2, 0x1a

    .line 186
    if-lt v1, v2, :cond_d1

    .line 188
    const-string v1, ", variationSettings="

    .line 190
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    move-result-object v1

    .line 194
    iget-object v2, p0, Lk0/c$a;->a:Landroid/text/TextPaint;

    .line 196
    invoke-static {v2}, Lg0/b;->m(Landroid/text/TextPaint;)Ljava/lang/String;

    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_d1
    const-string v1, ", textDir="

    .line 212
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    move-result-object v1

    .line 216
    iget-object v2, p0, Lk0/c$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    const-string v2, ", breakStrategy="

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget v2, p0, Lk0/c$a;->c:I

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    const-string v2, ", hyphenationFrequency="

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget v2, p0, Lk0/c$a;->d:I

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "}"

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v0

    .line 281
    return-object v0
.end method
