.class public final Lr/f;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# static fields
.field public static final a:D

.field public static final synthetic b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-wide v0, 0x4046800000000000L  # 45.0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Lr/f;->a:D

    .line 16
    return-void
.end method

.method public static a(FFZ)F
    .registers 9

    .line 1
    const/high16 v0, 0x3fc00000  # 1.5f

    .line 3
    if-eqz p2, :cond_10

    .line 5
    mul-float/2addr p0, v0

    .line 6
    float-to-double v0, p0

    .line 7
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 9
    sget-wide v4, Lr/f;->a:D

    .line 11
    sub-double/2addr v2, v4

    .line 12
    float-to-double p0, p1

    .line 13
    mul-double/2addr v2, p0

    .line 14
    add-double/2addr v2, v0

    .line 15
    double-to-float p0, v2

    .line 16
    return p0

    .line 17
    :cond_10
    mul-float/2addr p0, v0

    .line 18
    return p0
.end method
