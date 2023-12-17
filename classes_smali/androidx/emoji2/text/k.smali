.class public abstract Landroidx/emoji2/text/k;
.super Landroid/text/style/ReplacementSpan;
.source "EmojiSpan.java"


# instance fields
.field public final a:Landroid/graphics/Paint$FontMetricsInt;

.field public final b:Landroidx/emoji2/text/i;

.field public c:F


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/i;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/emoji2/text/k;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 11
    const/high16 v0, 0x3f800000  # 1.0f

    .line 13
    iput v0, p0, Landroidx/emoji2/text/k;->c:F

    .line 15
    if-eqz p1, :cond_13

    .line 17
    iput-object p1, p0, Landroidx/emoji2/text/k;->b:Landroidx/emoji2/text/i;

    .line 19
    return-void

    .line 20
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    .line 22
    const-string v0, "metadata cannot be null"

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method


# virtual methods
.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 8
    .param p2  # Ljava/lang/CharSequence;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Landroidx/emoji2/text/k;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 6
    iget-object p1, p0, Landroidx/emoji2/text/k;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 8
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 10
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 12
    sub-int/2addr p2, p1

    .line 13
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 16
    move-result p1

    .line 17
    int-to-float p1, p1

    .line 18
    const/high16 p2, 0x3f800000  # 1.0f

    .line 20
    mul-float/2addr p1, p2

    .line 21
    iget-object p2, p0, Landroidx/emoji2/text/k;->b:Landroidx/emoji2/text/i;

    .line 23
    invoke-virtual {p2}, Landroidx/emoji2/text/i;->c()Lt0/a;

    .line 26
    move-result-object p2

    .line 27
    const/16 p3, 0xe

    .line 29
    invoke-virtual {p2, p3}, Lt0/c;->a(I)I

    .line 32
    move-result p4

    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p4, :cond_2d

    .line 36
    iget-object v1, p2, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 38
    iget p2, p2, Lt0/c;->a:I

    .line 40
    add-int/2addr p4, p2

    .line 41
    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 44
    move-result p2

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move p2, v0

    .line 47
    :goto_2e
    int-to-float p2, p2

    .line 48
    div-float/2addr p1, p2

    .line 49
    iput p1, p0, Landroidx/emoji2/text/k;->c:F

    .line 51
    iget-object p1, p0, Landroidx/emoji2/text/k;->b:Landroidx/emoji2/text/i;

    .line 53
    invoke-virtual {p1}, Landroidx/emoji2/text/i;->c()Lt0/a;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, p3}, Lt0/c;->a(I)I

    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_46

    .line 63
    iget-object p3, p1, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 65
    iget p1, p1, Lt0/c;->a:I

    .line 67
    add-int/2addr p2, p1

    .line 68
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 71
    :cond_46
    iget-object p1, p0, Landroidx/emoji2/text/k;->b:Landroidx/emoji2/text/i;

    .line 73
    invoke-virtual {p1}, Landroidx/emoji2/text/i;->c()Lt0/a;

    .line 76
    move-result-object p1

    .line 77
    const/16 p2, 0xc

    .line 79
    invoke-virtual {p1, p2}, Lt0/c;->a(I)I

    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_5d

    .line 85
    iget-object p3, p1, Lt0/c;->b:Ljava/nio/ByteBuffer;

    .line 87
    iget p1, p1, Lt0/c;->a:I

    .line 89
    add-int/2addr p2, p1

    .line 90
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 93
    move-result v0

    .line 94
    :cond_5d
    int-to-float p1, v0

    .line 95
    iget p2, p0, Landroidx/emoji2/text/k;->c:F

    .line 97
    mul-float/2addr p1, p2

    .line 98
    float-to-int p1, p1

    .line 99
    int-to-short p1, p1

    .line 100
    if-eqz p5, :cond_77

    .line 102
    iget-object p2, p0, Landroidx/emoji2/text/k;->a:Landroid/graphics/Paint$FontMetricsInt;

    .line 104
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 106
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 108
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 110
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 112
    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 114
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 116
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 118
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 120
    :cond_77
    return p1
.end method
