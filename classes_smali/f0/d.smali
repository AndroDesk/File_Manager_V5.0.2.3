.class public final Lf0/d;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public static a(DDD)I
    .registers 23

    const-wide v0, 0x4009ecbfb15b573fL  # 3.2406

    mul-double v0, v0, p0

    const-wide v2, -0x400767a0f9096bbaL  # -1.5372

    mul-double v2, v2, p2

    add-double/2addr v2, v0

    const-wide v0, -0x402016f0068db8bbL  # -0.4986

    mul-double v0, v0, p4

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    div-double/2addr v0, v2

    const-wide v4, -0x4010fec56d5cfaadL  # -0.9689

    mul-double v4, v4, p0

    const-wide v6, 0x3ffe0346dc5d6388L  # 1.8758

    mul-double v6, v6, p2

    add-double/2addr v6, v4

    const-wide v4, 0x3fa53f7ced916873L  # 0.0415

    mul-double v4, v4, p4

    add-double/2addr v4, v6

    div-double/2addr v4, v2

    const-wide v6, 0x3fac84b5dcc63f14L  # 0.0557

    mul-double v6, v6, p0

    const-wide v8, -0x4035e353f7ced917L  # -0.204

    mul-double v8, v8, p2

    add-double/2addr v8, v6

    const-wide v6, 0x3ff0e978d4fdf3b6L  # 1.057

    mul-double v6, v6, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v2

    const-wide v2, 0x3f69a5c37387b719L  # 0.0031308

    cmpl-double v8, v0, v2

    const-wide v9, 0x3fac28f5c28f5c29L  # 0.055

    const-wide v11, 0x3fdaaaaaaaaaaaabL  # 0.4166666666666667

    const-wide v13, 0x3ff0e147ae147ae1L  # 1.055

    const-wide v15, 0x4029d70a3d70a3d7L  # 12.92

    if-lez v8, :cond_6e

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v13

    sub-double/2addr v0, v9

    goto :goto_6f

    :cond_6e
    mul-double/2addr v0, v15

    :goto_6f
    cmpl-double v8, v4, v2

    if-lez v8, :cond_7a

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v13

    sub-double/2addr v4, v9

    goto :goto_7b

    :cond_7a
    mul-double/2addr v4, v15

    :goto_7b
    cmpl-double v2, v6, v2

    if-lez v2, :cond_86

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v13

    sub-double/2addr v2, v9

    goto :goto_88

    :cond_86
    mul-double v2, v6, v15

    :goto_88
    const-wide v6, 0x406fe00000000000L  # 255.0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    const/16 v8, 0xff

    if-gez v0, :cond_9a

    move v0, v1

    goto :goto_9e

    :cond_9a
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_9e
    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    if-gez v4, :cond_a8

    move v4, v1

    goto :goto_ac

    :cond_a8
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_ac
    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    if-gez v2, :cond_b5

    goto :goto_b9

    :cond_b5
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_b9
    invoke-static {v0, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static b(II)I
    .registers 10

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    rsub-int v2, v0, 0xff

    rsub-int v3, v1, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    const/4 v6, 0x0

    if-nez v2, :cond_1e

    move v5, v6

    goto :goto_27

    :cond_1e
    mul-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v1

    mul-int/2addr v5, v0

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    mul-int/lit16 v4, v2, 0xff

    div-int/2addr v5, v4

    :goto_27
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    if-nez v2, :cond_33

    move v7, v6

    goto :goto_3c

    :cond_33
    mul-int/lit16 v4, v4, 0xff

    mul-int/2addr v4, v1

    mul-int/2addr v7, v0

    mul-int/2addr v7, v3

    add-int/2addr v7, v4

    mul-int/lit16 v4, v2, 0xff

    div-int/2addr v7, v4

    :goto_3c
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    if-nez v2, :cond_47

    goto :goto_51

    :cond_47
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, v1

    mul-int/2addr p1, v0

    mul-int/2addr p1, v3

    add-int/2addr p1, p0

    mul-int/lit16 p0, v2, 0xff

    div-int v6, p1, p0

    :goto_51
    invoke-static {v2, v5, v7, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static c(II)I
    .registers 3

    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
