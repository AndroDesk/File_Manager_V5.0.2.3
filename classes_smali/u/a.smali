.class public final Lu/a;
.super Lu/b;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/a$a;
    }
.end annotation


# instance fields
.field public a:[Lu/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([I[D[[D)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Lu/b;-><init>()V

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Lu/a$a;

    iput-object v2, v0, Lu/a;->a:[Lu/a$a;

    const/4 v2, 0x0

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_12
    iget-object v7, v0, Lu/a;->a:[Lu/a$a;

    array-length v8, v7

    if-ge v4, v8, :cond_4b

    aget v8, p1, v4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v8, :cond_2b

    if-eq v8, v3, :cond_28

    if-eq v8, v10, :cond_26

    if-eq v8, v9, :cond_24

    goto :goto_2c

    :cond_24
    if-ne v5, v3, :cond_28

    :cond_26
    move v5, v10

    goto :goto_29

    :cond_28
    move v5, v3

    :goto_29
    move v6, v5

    goto :goto_2c

    :cond_2b
    move v6, v9

    :goto_2c
    new-instance v22, Lu/a$a;

    aget-wide v10, v1, v4

    add-int/lit8 v23, v4, 0x1

    aget-wide v12, v1, v23

    aget-object v8, p3, v4

    aget-wide v14, v8, v2

    aget-wide v16, v8, v3

    aget-object v8, p3, v23

    aget-wide v18, v8, v2

    aget-wide v20, v8, v3

    move-object/from16 v8, v22

    move v9, v6

    invoke-direct/range {v8 .. v21}, Lu/a$a;-><init>(IDDDDDD)V

    aput-object v22, v7, v4

    move/from16 v4, v23

    goto :goto_12

    :cond_4b
    return-void
.end method


# virtual methods
.method public final b(D)D
    .registers 9

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v3, v2, Lu/a$a;->c:D

    cmpg-double v5, p1, v3

    if-gez v5, :cond_33

    sub-double/2addr p1, v3

    iget-boolean v0, v2, Lu/a$a;->r:Z

    if-eqz v0, :cond_1d

    invoke-virtual {v2, v3, v4}, Lu/a$a;->c(D)D

    move-result-wide v2

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    iget-wide v0, v0, Lu/a$a;->l:D

    mul-double/2addr p1, v0

    add-double/2addr p1, v2

    return-wide p1

    :cond_1d
    invoke-virtual {v2, v3, v4}, Lu/a$a;->g(D)V

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->e()D

    move-result-wide v2

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->a()D

    move-result-wide v0

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    return-wide v0

    :cond_33
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    iget-wide v2, v2, Lu/a$a;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_58

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iget-wide v1, v1, Lu/a$a;->d:D

    sub-double/2addr p1, v1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {v0, v1, v2}, Lu/a$a;->c(D)D

    move-result-wide v0

    iget-object v2, p0, Lu/a;->a:[Lu/a$a;

    aget-object v2, v2, v3

    iget-wide v2, v2, Lu/a$a;->l:D

    mul-double/2addr p1, v2

    add-double/2addr p1, v0

    return-wide p1

    :cond_58
    :goto_58
    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    array-length v2, v0

    if-ge v1, v2, :cond_7d

    aget-object v0, v0, v1

    iget-wide v2, v0, Lu/a$a;->d:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_7a

    iget-boolean v2, v0, Lu/a$a;->r:Z

    if-eqz v2, :cond_6e

    invoke-virtual {v0, p1, p2}, Lu/a$a;->c(D)D

    move-result-wide p1

    return-wide p1

    :cond_6e
    invoke-virtual {v0, p1, p2}, Lu/a$a;->g(D)V

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lu/a$a;->e()D

    move-result-wide p1

    return-wide p1

    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_7d
    const-wide/high16 p1, 0x7ff8000000000000L  # Double.NaN

    return-wide p1
.end method

.method public final c(D[D)V
    .registers 15

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v3, v2, Lu/a$a;->c:D

    cmpg-double v5, p1, v3

    const/4 v6, 0x1

    if-gez v5, :cond_5a

    sub-double/2addr p1, v3

    iget-boolean v0, v2, Lu/a$a;->r:Z

    if-eqz v0, :cond_2e

    invoke-virtual {v2, v3, v4}, Lu/a$a;->c(D)D

    move-result-wide v7

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    iget-wide v9, v0, Lu/a$a;->l:D

    mul-double/2addr v9, p1

    add-double/2addr v9, v7

    aput-wide v9, p3, v1

    invoke-virtual {v0, v3, v4}, Lu/a$a;->d(D)D

    move-result-wide v2

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    iget-wide v0, v0, Lu/a$a;->m:D

    mul-double/2addr p1, v0

    add-double/2addr p1, v2

    aput-wide p1, p3, v6

    goto :goto_59

    :cond_2e
    invoke-virtual {v2, v3, v4}, Lu/a$a;->g(D)V

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->e()D

    move-result-wide v2

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->a()D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v4, v2

    aput-wide v4, p3, v1

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->f()D

    move-result-wide v2

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->b()D

    move-result-wide v0

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    aput-wide v0, p3, v6

    :goto_59
    return-void

    :cond_5a
    array-length v2, v0

    sub-int/2addr v2, v6

    aget-object v2, v0, v2

    iget-wide v2, v2, Lu/a$a;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_bd

    array-length v2, v0

    sub-int/2addr v2, v6

    aget-object v2, v0, v2

    iget-wide v2, v2, Lu/a$a;->d:D

    sub-double v4, p1, v2

    array-length v7, v0

    sub-int/2addr v7, v6

    aget-object v0, v0, v7

    iget-boolean v8, v0, Lu/a$a;->r:Z

    if-eqz v8, :cond_91

    invoke-virtual {v0, v2, v3}, Lu/a$a;->c(D)D

    move-result-wide p1

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v7

    iget-wide v8, v0, Lu/a$a;->l:D

    mul-double/2addr v8, v4

    add-double/2addr v8, p1

    aput-wide v8, p3, v1

    invoke-virtual {v0, v2, v3}, Lu/a$a;->d(D)D

    move-result-wide p1

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v7

    iget-wide v0, v0, Lu/a$a;->m:D

    mul-double/2addr v4, v0

    add-double/2addr v4, p1

    aput-wide v4, p3, v6

    goto :goto_bc

    :cond_91
    invoke-virtual {v0, p1, p2}, Lu/a$a;->g(D)V

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v7

    invoke-virtual {p1}, Lu/a$a;->e()D

    move-result-wide p1

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lu/a$a;->a()D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v2, p1

    aput-wide v2, p3, v1

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v7

    invoke-virtual {p1}, Lu/a$a;->f()D

    move-result-wide p1

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lu/a$a;->b()D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, p1

    aput-wide v0, p3, v6

    :goto_bc
    return-void

    :cond_bd
    move v0, v1

    :goto_be
    iget-object v2, p0, Lu/a;->a:[Lu/a$a;

    array-length v3, v2

    if-ge v0, v3, :cond_fb

    aget-object v2, v2, v0

    iget-wide v3, v2, Lu/a$a;->d:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_f8

    iget-boolean v3, v2, Lu/a$a;->r:Z

    if-eqz v3, :cond_e0

    invoke-virtual {v2, p1, p2}, Lu/a$a;->c(D)D

    move-result-wide v2

    aput-wide v2, p3, v1

    iget-object v1, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Lu/a$a;->d(D)D

    move-result-wide p1

    aput-wide p1, p3, v6

    return-void

    :cond_e0
    invoke-virtual {v2, p1, p2}, Lu/a$a;->g(D)V

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lu/a$a;->e()D

    move-result-wide p1

    aput-wide p1, p3, v1

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lu/a$a;->f()D

    move-result-wide p1

    aput-wide p1, p3, v6

    return-void

    :cond_f8
    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    :cond_fb
    return-void
.end method

.method public final d(D[F)V
    .registers 15

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v3, v2, Lu/a$a;->c:D

    cmpg-double v5, p1, v3

    const/4 v6, 0x1

    if-gez v5, :cond_5e

    sub-double/2addr p1, v3

    iget-boolean v0, v2, Lu/a$a;->r:Z

    if-eqz v0, :cond_30

    invoke-virtual {v2, v3, v4}, Lu/a$a;->c(D)D

    move-result-wide v7

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    iget-wide v9, v0, Lu/a$a;->l:D

    mul-double/2addr v9, p1

    add-double/2addr v9, v7

    double-to-float v2, v9

    aput v2, p3, v1

    invoke-virtual {v0, v3, v4}, Lu/a$a;->d(D)D

    move-result-wide v2

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    iget-wide v0, v0, Lu/a$a;->m:D

    mul-double/2addr p1, v0

    add-double/2addr p1, v2

    double-to-float p1, p1

    aput p1, p3, v6

    goto :goto_5d

    :cond_30
    invoke-virtual {v2, v3, v4}, Lu/a$a;->g(D)V

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->e()D

    move-result-wide v2

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->a()D

    move-result-wide v4

    mul-double/2addr v4, p1

    add-double/2addr v4, v2

    double-to-float v0, v4

    aput v0, p3, v1

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->f()D

    move-result-wide v2

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/a$a;->b()D

    move-result-wide v0

    mul-double/2addr v0, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    aput p1, p3, v6

    :goto_5d
    return-void

    :cond_5e
    array-length v2, v0

    sub-int/2addr v2, v6

    aget-object v2, v0, v2

    iget-wide v2, v2, Lu/a$a;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_b1

    array-length v2, v0

    sub-int/2addr v2, v6

    aget-object v2, v0, v2

    iget-wide v2, v2, Lu/a$a;->d:D

    sub-double v4, p1, v2

    array-length v7, v0

    sub-int/2addr v7, v6

    aget-object v0, v0, v7

    iget-boolean v8, v0, Lu/a$a;->r:Z

    if-eqz v8, :cond_97

    invoke-virtual {v0, v2, v3}, Lu/a$a;->c(D)D

    move-result-wide p1

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v7

    iget-wide v8, v0, Lu/a$a;->l:D

    mul-double/2addr v8, v4

    add-double/2addr v8, p1

    double-to-float p1, v8

    aput p1, p3, v1

    invoke-virtual {v0, v2, v3}, Lu/a$a;->d(D)D

    move-result-wide p1

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v0, v7

    iget-wide v0, v0, Lu/a$a;->m:D

    mul-double/2addr v4, v0

    add-double/2addr v4, p1

    double-to-float p1, v4

    aput p1, p3, v6

    goto :goto_b0

    :cond_97
    invoke-virtual {v0, p1, p2}, Lu/a$a;->g(D)V

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v7

    invoke-virtual {p1}, Lu/a$a;->e()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v1

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v7

    invoke-virtual {p1}, Lu/a$a;->f()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v6

    :goto_b0
    return-void

    :cond_b1
    move v0, v1

    :goto_b2
    iget-object v2, p0, Lu/a;->a:[Lu/a$a;

    array-length v3, v2

    if-ge v0, v3, :cond_f3

    aget-object v2, v2, v0

    iget-wide v3, v2, Lu/a$a;->d:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_f0

    iget-boolean v3, v2, Lu/a$a;->r:Z

    if-eqz v3, :cond_d6

    invoke-virtual {v2, p1, p2}, Lu/a$a;->c(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v1

    iget-object v1, p0, Lu/a;->a:[Lu/a$a;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Lu/a$a;->d(D)D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v6

    return-void

    :cond_d6
    invoke-virtual {v2, p1, p2}, Lu/a$a;->g(D)V

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lu/a$a;->e()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v1

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lu/a$a;->f()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v6

    return-void

    :cond_f0
    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    :cond_f3
    return-void
.end method

.method public final e(D[D)V
    .registers 10

    iget-object v0, p0, Lu/a;->a:[Lu/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, Lu/a$a;->c:D

    cmpg-double v4, p1, v2

    const/4 v5, 0x1

    if-gez v4, :cond_e

    move-wide p1, v2

    goto :goto_1e

    :cond_e
    array-length v2, v0

    sub-int/2addr v2, v5

    aget-object v2, v0, v2

    iget-wide v2, v2, Lu/a$a;->d:D

    cmpl-double v2, p1, v2

    if-lez v2, :cond_1e

    array-length p1, v0

    sub-int/2addr p1, v5

    aget-object p1, v0, p1

    iget-wide p1, p1, Lu/a$a;->d:D

    :cond_1e
    :goto_1e
    move v0, v1

    :goto_1f
    iget-object v2, p0, Lu/a;->a:[Lu/a$a;

    array-length v3, v2

    if-ge v0, v3, :cond_54

    aget-object v2, v2, v0

    iget-wide v3, v2, Lu/a$a;->d:D

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_51

    iget-boolean v3, v2, Lu/a$a;->r:Z

    if-eqz v3, :cond_39

    iget-wide p1, v2, Lu/a$a;->l:D

    aput-wide p1, p3, v1

    iget-wide p1, v2, Lu/a$a;->m:D

    aput-wide p1, p3, v5

    return-void

    :cond_39
    invoke-virtual {v2, p1, p2}, Lu/a$a;->g(D)V

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lu/a$a;->a()D

    move-result-wide p1

    aput-wide p1, p3, v1

    iget-object p1, p0, Lu/a;->a:[Lu/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lu/a$a;->b()D

    move-result-wide p1

    aput-wide p1, p3, v5

    return-void

    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_54
    return-void
.end method
