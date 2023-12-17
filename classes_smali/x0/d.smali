.class public abstract Lx0/d;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final a:[F

.field public final b:F


# direct methods
.method public constructor <init>([F)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lx0/d;->a:[F

    .line 6
    array-length p1, p1

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 9
    int-to-float p1, p1

    .line 10
    const/high16 v0, 0x3f800000  # 1.0f

    .line 12
    div-float/2addr v0, p1

    .line 13
    iput v0, p0, Lx0/d;->b:F

    .line 15
    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 5

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    cmpl-float v1, p1, v0

    .line 5
    if-ltz v1, :cond_7

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    cmpg-float v1, p1, v0

    .line 11
    if-gtz v1, :cond_d

    .line 13
    return v0

    .line 14
    :cond_d
    iget-object v0, p0, Lx0/d;->a:[F

    .line 16
    array-length v1, v0

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 19
    int-to-float v1, v1

    .line 20
    mul-float/2addr v1, p1

    .line 21
    float-to-int v1, v1

    .line 22
    array-length v0, v0

    .line 23
    add-int/lit8 v0, v0, -0x2

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result v0

    .line 29
    int-to-float v1, v0

    .line 30
    iget v2, p0, Lx0/d;->b:F

    .line 32
    mul-float/2addr v1, v2

    .line 33
    sub-float/2addr p1, v1

    .line 34
    div-float/2addr p1, v2

    .line 35
    iget-object v1, p0, Lx0/d;->a:[F

    .line 37
    aget v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 41
    aget v0, v1, v0

    .line 43
    invoke-static {v0, v2, p1, v2}, Lf0/e;->a(FFFF)F

    .line 46
    move-result p1

    .line 47
    return p1
.end method
