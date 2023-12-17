.class Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$AtMost;
.super Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtMost"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
    .registers 5

    .line 1
    sget-object p1, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;->MEMORY:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;

    .line 3
    return-object p1
.end method

.method public getScaleFactor(IIII)F
    .registers 5

    .line 1
    int-to-float p2, p2

    .line 2
    int-to-float p4, p4

    .line 3
    div-float/2addr p2, p4

    .line 4
    int-to-float p1, p1

    .line 5
    int-to-float p3, p3

    .line 6
    div-float/2addr p1, p3

    .line 7
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 10
    move-result p1

    .line 11
    float-to-double p1, p1

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 15
    move-result-wide p1

    .line 16
    double-to-int p1, p1

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 20
    move-result p2

    .line 21
    const/4 p3, 0x1

    .line 22
    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result p2

    .line 26
    if-ge p2, p1, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p3, 0x0

    .line 30
    :goto_1d
    shl-int p1, p2, p3

    .line 32
    const/high16 p2, 0x3f800000  # 1.0f

    .line 34
    int-to-float p1, p1

    .line 35
    div-float/2addr p2, p1

    .line 36
    return p2
.end method
