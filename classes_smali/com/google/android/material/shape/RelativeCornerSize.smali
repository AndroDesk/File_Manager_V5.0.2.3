.class public final Lcom/google/android/material/shape/RelativeCornerSize;
.super Ljava/lang/Object;
.source "RelativeCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final percent:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lcom/google/android/material/shape/RelativeCornerSize;

    .line 13
    iget v1, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 15
    iget p1, p1, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 17
    cmpl-float p1, v1, p1

    .line 19
    if-nez p1, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move v0, v2

    .line 23
    :goto_16
    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 6
    move-result p1

    .line 7
    mul-float/2addr p1, v0

    .line 8
    return p1
.end method

.method public getRelativePercent()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 3
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 16
    move-result v0

    .line 17
    return v0
.end method
