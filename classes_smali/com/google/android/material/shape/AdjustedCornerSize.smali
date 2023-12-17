.class public final Lcom/google/android/material/shape/AdjustedCornerSize;
.super Ljava/lang/Object;
.source "AdjustedCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final adjustment:F

.field private final other:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method public constructor <init>(FLcom/google/android/material/shape/CornerSize;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    :goto_3
    instance-of v0, p2, Lcom/google/android/material/shape/AdjustedCornerSize;

    .line 6
    if-eqz v0, :cond_12

    .line 8
    check-cast p2, Lcom/google/android/material/shape/AdjustedCornerSize;

    .line 10
    iget-object p2, p2, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    .line 12
    move-object v0, p2

    .line 13
    check-cast v0, Lcom/google/android/material/shape/AdjustedCornerSize;

    .line 15
    iget v0, v0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    .line 17
    add-float/2addr p1, v0

    .line 18
    goto :goto_3

    .line 19
    :cond_12
    iput-object p2, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    .line 21
    iput p1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/shape/AdjustedCornerSize;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lcom/google/android/material/shape/AdjustedCornerSize;

    .line 13
    iget-object v1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    .line 15
    iget-object v3, p1, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1f

    .line 23
    iget v1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    .line 25
    iget p1, p1, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    .line 27
    cmpl-float p1, v1, p1

    .line 29
    if-nez p1, :cond_1f

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    move v0, v2

    .line 33
    :goto_20
    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    .line 9
    add-float/2addr p1, v0

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->other:Lcom/google/android/material/shape/CornerSize;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    iget v1, p0, Lcom/google/android/material/shape/AdjustedCornerSize;->adjustment:F

    .line 11
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 21
    move-result v0

    .line 22
    return v0
.end method
