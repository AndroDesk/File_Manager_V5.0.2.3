.class public abstract Lx0/d;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final a:[F

.field public final b:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/d;->a:[F

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lx0/d;->b:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 5

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_7

    return v0

    :cond_7
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_d

    return v0

    :cond_d
    iget-object v0, p0, Lx0/d;->a:[F

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lx0/d;->b:F

    mul-float/2addr v1, v2

    sub-float/2addr p1, v1

    div-float/2addr p1, v2

    iget-object v1, p0, Lx0/d;->a:[F

    aget v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    invoke-static {v0, v2, p1, v2}, Lf0/e;->a(FFFF)F

    move-result p1

    return p1
.end method
