.class public abstract Landroidx/emoji2/text/k;
.super Landroid/text/style/ReplacementSpan;
.source "EmojiSpan.java"


# instance fields
.field public final a:Landroid/graphics/Paint$FontMetricsInt;

.field public final b:Landroidx/emoji2/text/i;

.field public c:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/i;)V
    .registers 3

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/k;->a:Landroid/graphics/Paint$FontMetricsInt;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroidx/emoji2/text/k;->c:F

    if-eqz p1, :cond_13

    iput-object p1, p0, Landroidx/emoji2/text/k;->b:Landroidx/emoji2/text/i;

    return-void

    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "metadata cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

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

    iget-object p2, p0, Landroidx/emoji2/text/k;->a:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget-object p1, p0, Landroidx/emoji2/text/k;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000  # 1.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Landroidx/emoji2/text/k;->b:Landroidx/emoji2/text/i;

    invoke-virtual {p2}, Landroidx/emoji2/text/i;->c()Lt0/a;

    move-result-object p2

    const/16 p3, 0xe

    invoke-virtual {p2, p3}, Lt0/c;->a(I)I

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2d

    iget-object v1, p2, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget p2, p2, Lt0/c;->a:I

    add-int/2addr p4, p2

    invoke-virtual {v1, p4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p2

    goto :goto_2e

    :cond_2d
    move p2, v0

    :goto_2e
    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Landroidx/emoji2/text/k;->c:F

    iget-object p1, p0, Landroidx/emoji2/text/k;->b:Landroidx/emoji2/text/i;

    invoke-virtual {p1}, Landroidx/emoji2/text/i;->c()Lt0/a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lt0/c;->a(I)I

    move-result p2

    if-eqz p2, :cond_46

    iget-object p3, p1, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget p1, p1, Lt0/c;->a:I

    add-int/2addr p2, p1

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_46
    iget-object p1, p0, Landroidx/emoji2/text/k;->b:Landroidx/emoji2/text/i;

    invoke-virtual {p1}, Landroidx/emoji2/text/i;->c()Lt0/a;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lt0/c;->a(I)I

    move-result p2

    if-eqz p2, :cond_5d

    iget-object p3, p1, Lt0/c;->b:Ljava/nio/ByteBuffer;

    iget p1, p1, Lt0/c;->a:I

    add-int/2addr p2, p1

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    :cond_5d
    int-to-float p1, v0

    iget p2, p0, Landroidx/emoji2/text/k;->c:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-short p1, p1

    if-eqz p5, :cond_77

    iget-object p2, p0, Landroidx/emoji2/text/k;->a:Landroid/graphics/Paint$FontMetricsInt;

    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p3, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_77
    return p1
.end method
