.class public final Lu/f;
.super Lu/b;
.source "LinearCurveFit.java"


# instance fields
.field public a:[D

.field public b:[[D

.field public c:[D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([D[[D)V
    .registers 10

    invoke-direct {p0}, Lu/b;-><init>()V

    array-length v0, p1

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    new-array v2, v1, [D

    iput-object v2, p0, Lu/f;->c:[D

    iput-object p1, p0, Lu/f;->a:[D

    iput-object p2, p0, Lu/f;->b:[[D

    const/4 v2, 0x2

    if-le v1, v2, :cond_28

    const-wide/16 v1, 0x0

    move v3, v0

    :goto_16
    array-length v4, p1

    if-ge v3, v4, :cond_28

    aget-object v4, p2, v3

    aget-wide v5, v4, v0

    if-lez v3, :cond_24

    sub-double v1, v5, v1

    invoke-static {v1, v2, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    :cond_24
    add-int/lit8 v3, v3, 0x1

    move-wide v1, v5

    goto :goto_16

    :cond_28
    return-void
.end method


# virtual methods
.method public final b(D)D
    .registers 12

    iget-object v0, p0, Lu/f;->a:[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_16

    iget-object v0, p0, Lu/f;->b:[[D

    aget-object v0, v0, v2

    aget-wide v1, v0, v2

    sub-double/2addr p1, v3

    invoke-virtual {p0, v3, v4}, Lu/f;->f(D)D

    move-result-wide v3

    goto :goto_29

    :cond_16
    add-int/lit8 v1, v1, -0x1

    aget-wide v3, v0, v1

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_2c

    iget-object v0, p0, Lu/f;->b:[[D

    aget-object v0, v0, v1

    aget-wide v1, v0, v2

    sub-double/2addr p1, v3

    invoke-virtual {p0, v3, v4}, Lu/f;->f(D)D

    move-result-wide v3

    :goto_29
    mul-double/2addr v3, p1

    add-double/2addr v3, v1

    return-wide v3

    :cond_2c
    move v0, v2

    :goto_2d
    if-ge v0, v1, :cond_5c

    iget-object v3, p0, Lu/f;->a:[D

    aget-wide v4, v3, v0

    cmpl-double v6, p1, v4

    if-nez v6, :cond_3e

    iget-object p1, p0, Lu/f;->b:[[D

    aget-object p1, p1, v0

    aget-wide v0, p1, v2

    return-wide v0

    :cond_3e
    add-int/lit8 v6, v0, 0x1

    aget-wide v7, v3, v6

    cmpg-double v3, p1, v7

    if-gez v3, :cond_5a

    sub-double/2addr v7, v4

    sub-double/2addr p1, v4

    div-double/2addr p1, v7

    iget-object v1, p0, Lu/f;->b:[[D

    aget-object v0, v1, v0

    aget-wide v3, v0, v2

    aget-object v0, v1, v6

    aget-wide v1, v0, v2

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v5, p1

    mul-double/2addr v5, v3

    mul-double/2addr v1, p1

    add-double/2addr v1, v5

    return-wide v1

    :cond_5a
    move v0, v6

    goto :goto_2d

    :cond_5c
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final c(D[D)V
    .registers 16

    iget-object v0, p0, Lu/f;->a:[D

    array-length v1, v0

    iget-object v2, p0, Lu/f;->b:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_2f

    iget-object v0, p0, Lu/f;->c:[D

    invoke-virtual {p0, v4, v5, v0}, Lu/f;->e(D[D)V

    move v0, v3

    :goto_15
    if-ge v0, v2, :cond_2e

    iget-object v1, p0, Lu/f;->b:[[D

    aget-object v1, v1, v3

    aget-wide v4, v1, v0

    iget-object v1, p0, Lu/f;->a:[D

    aget-wide v6, v1, v3

    sub-double v6, p1, v6

    iget-object v1, p0, Lu/f;->c:[D

    aget-wide v8, v1, v0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    aput-wide v6, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2e
    return-void

    :cond_2f
    add-int/lit8 v4, v1, -0x1

    aget-wide v5, v0, v4

    cmpl-double v0, p1, v5

    if-ltz v0, :cond_56

    iget-object v0, p0, Lu/f;->c:[D

    invoke-virtual {p0, v5, v6, v0}, Lu/f;->e(D[D)V

    :goto_3c
    if-ge v3, v2, :cond_55

    iget-object v0, p0, Lu/f;->b:[[D

    aget-object v0, v0, v4

    aget-wide v5, v0, v3

    iget-object v0, p0, Lu/f;->a:[D

    aget-wide v7, v0, v4

    sub-double v0, p1, v7

    iget-object v7, p0, Lu/f;->c:[D

    aget-wide v8, v7, v3

    mul-double/2addr v0, v8

    add-double/2addr v0, v5

    aput-wide v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_55
    return-void

    :cond_56
    move v0, v3

    :goto_57
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_9a

    iget-object v4, p0, Lu/f;->a:[D

    aget-wide v5, v4, v0

    cmpl-double v4, p1, v5

    if-nez v4, :cond_71

    move v4, v3

    :goto_64
    if-ge v4, v2, :cond_71

    iget-object v5, p0, Lu/f;->b:[[D

    aget-object v5, v5, v0

    aget-wide v6, v5, v4

    aput-wide v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_71
    iget-object v4, p0, Lu/f;->a:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_98

    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_80
    if-ge v3, v2, :cond_97

    iget-object v1, p0, Lu/f;->b:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v10, p1

    mul-double/2addr v10, v6

    mul-double/2addr v8, p1

    add-double/2addr v8, v10

    aput-wide v8, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    :cond_97
    return-void

    :cond_98
    move v0, v5

    goto :goto_57

    :cond_9a
    return-void
.end method

.method public final d(D[F)V
    .registers 16

    iget-object v0, p0, Lu/f;->a:[D

    array-length v1, v0

    iget-object v2, p0, Lu/f;->b:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_30

    iget-object v0, p0, Lu/f;->c:[D

    invoke-virtual {p0, v4, v5, v0}, Lu/f;->e(D[D)V

    move v0, v3

    :goto_15
    if-ge v0, v2, :cond_2f

    iget-object v1, p0, Lu/f;->b:[[D

    aget-object v1, v1, v3

    aget-wide v4, v1, v0

    iget-object v1, p0, Lu/f;->a:[D

    aget-wide v6, v1, v3

    sub-double v6, p1, v6

    iget-object v1, p0, Lu/f;->c:[D

    aget-wide v8, v1, v0

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    double-to-float v1, v6

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2f
    return-void

    :cond_30
    add-int/lit8 v1, v1, -0x1

    aget-wide v4, v0, v1

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_58

    iget-object v0, p0, Lu/f;->c:[D

    invoke-virtual {p0, v4, v5, v0}, Lu/f;->e(D[D)V

    :goto_3d
    if-ge v3, v2, :cond_57

    iget-object v0, p0, Lu/f;->b:[[D

    aget-object v0, v0, v1

    aget-wide v4, v0, v3

    iget-object v0, p0, Lu/f;->a:[D

    aget-wide v6, v0, v1

    sub-double v6, p1, v6

    iget-object v0, p0, Lu/f;->c:[D

    aget-wide v8, v0, v3

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    double-to-float v0, v6

    aput v0, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_57
    return-void

    :cond_58
    move v0, v3

    :goto_59
    if-ge v0, v1, :cond_9c

    iget-object v4, p0, Lu/f;->a:[D

    aget-wide v5, v4, v0

    cmpl-double v4, p1, v5

    if-nez v4, :cond_72

    move v4, v3

    :goto_64
    if-ge v4, v2, :cond_72

    iget-object v5, p0, Lu/f;->b:[[D

    aget-object v5, v5, v0

    aget-wide v6, v5, v4

    double-to-float v5, v6

    aput v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    :cond_72
    iget-object v4, p0, Lu/f;->a:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_9a

    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_81
    if-ge v3, v2, :cond_99

    iget-object v1, p0, Lu/f;->b:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v10, p1

    mul-double/2addr v10, v6

    mul-double/2addr v8, p1

    add-double/2addr v8, v10

    double-to-float v1, v8

    aput v1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    :cond_99
    return-void

    :cond_9a
    move v0, v5

    goto :goto_59

    :cond_9c
    return-void
.end method

.method public final e(D[D)V
    .registers 16

    iget-object v0, p0, Lu/f;->a:[D

    array-length v1, v0

    iget-object v2, p0, Lu/f;->b:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_11

    :goto_f
    move-wide p1, v4

    goto :goto_1a

    :cond_11
    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v0, v4

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_1a

    goto :goto_f

    :cond_1a
    :goto_1a
    move v0, v3

    :goto_1b
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_41

    iget-object v4, p0, Lu/f;->a:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_3f

    aget-wide p1, v4, v0

    sub-double/2addr v6, p1

    :goto_2c
    if-ge v3, v2, :cond_41

    iget-object p1, p0, Lu/f;->b:[[D

    aget-object p2, p1, v0

    aget-wide v8, p2, v3

    aget-object p1, p1, v5

    aget-wide v10, p1, v3

    sub-double/2addr v10, v8

    div-double/2addr v10, v6

    aput-wide v10, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3f
    move v0, v5

    goto :goto_1b

    :cond_41
    return-void
.end method

.method public final f(D)D
    .registers 11

    iget-object v0, p0, Lu/f;->a:[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gez v5, :cond_c

    :goto_a
    move-wide p1, v3

    goto :goto_15

    :cond_c
    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v0, v3

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_15

    goto :goto_a

    :cond_15
    :goto_15
    move v0, v2

    :goto_16
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_36

    iget-object v3, p0, Lu/f;->a:[D

    add-int/lit8 v4, v0, 0x1

    aget-wide v5, v3, v4

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_34

    aget-wide p1, v3, v0

    sub-double/2addr v5, p1

    iget-object p1, p0, Lu/f;->b:[[D

    aget-object p2, p1, v0

    aget-wide v0, p2, v2

    aget-object p1, p1, v4

    aget-wide v2, p1, v2

    sub-double/2addr v2, v0

    div-double/2addr v2, v5

    return-wide v2

    :cond_34
    move v0, v4

    goto :goto_16

    :cond_36
    const-wide/16 p1, 0x0

    return-wide p1
.end method
