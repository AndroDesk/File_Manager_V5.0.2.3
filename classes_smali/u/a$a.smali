.class public final Lu/a$a;
.super Ljava/lang/Object;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static s:[D


# instance fields
.field public a:[D

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D

.field public j:D

.field public k:D

.field public l:D

.field public m:D

.field public n:D

.field public o:D

.field public p:D

.field public q:Z

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x5b

    new-array v0, v0, [D

    sput-object v0, Lu/a$a;->s:[D

    return-void
.end method

.method public constructor <init>(IDDDDDD)V
    .registers 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v14, 0x0

    iput-boolean v14, v0, Lu/a$a;->r:Z

    const/4 v15, 0x1

    if-ne v1, v15, :cond_1a

    move v14, v15

    :cond_1a
    iput-boolean v14, v0, Lu/a$a;->q:Z

    iput-wide v2, v0, Lu/a$a;->c:D

    iput-wide v4, v0, Lu/a$a;->d:D

    const-wide/high16 v17, 0x3ff0000000000000L  # 1.0

    sub-double v2, v4, v2

    div-double v2, v17, v2

    iput-wide v2, v0, Lu/a$a;->i:D

    const/4 v2, 0x3

    if-ne v2, v1, :cond_2d

    iput-boolean v15, v0, Lu/a$a;->r:Z

    :cond_2d
    sub-double v1, v10, v6

    sub-double v3, v12, v8

    iget-boolean v5, v0, Lu/a$a;->r:Z

    if-nez v5, :cond_105

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    const-wide v19, 0x3f50624dd2f1a9fcL  # 0.001

    cmpg-double v5, v17, v19

    if-ltz v5, :cond_105

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    cmpg-double v5, v17, v19

    if-gez v5, :cond_4c

    goto/16 :goto_105

    :cond_4c
    const/16 v5, 0x65

    new-array v5, v5, [D

    iput-object v5, v0, Lu/a$a;->a:[D

    iget-boolean v5, v0, Lu/a$a;->q:Z

    if-eqz v5, :cond_57

    const/4 v15, -0x1

    :cond_57
    int-to-double v14, v15

    mul-double/2addr v14, v1

    iput-wide v14, v0, Lu/a$a;->j:D

    if-eqz v5, :cond_5f

    const/4 v15, 0x1

    goto :goto_60

    :cond_5f
    const/4 v15, -0x1

    :goto_60
    int-to-double v14, v15

    mul-double/2addr v3, v14

    iput-wide v3, v0, Lu/a$a;->k:D

    if-eqz v5, :cond_67

    move-wide v6, v10

    :cond_67
    iput-wide v6, v0, Lu/a$a;->l:D

    if-eqz v5, :cond_6d

    move-wide v3, v8

    goto :goto_6e

    :cond_6d
    move-wide v3, v12

    :goto_6e
    iput-wide v3, v0, Lu/a$a;->m:D

    sub-double v3, v8, v12

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    :goto_79
    sget-object v14, Lu/a$a;->s:[D

    const/16 v15, 0x5b

    const/16 v5, 0x5a

    if-ge v7, v15, :cond_ad

    const-wide v17, 0x4056800000000000L  # 90.0

    move-object/from16 p4, v14

    int-to-double v14, v7

    mul-double v14, v14, v17

    int-to-double v5, v5

    div-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v14, v1

    mul-double/2addr v5, v3

    if-lez v7, :cond_a8

    sub-double v10, v14, v10

    sub-double v12, v5, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    aput-wide v8, p4, v7

    :cond_a8
    add-int/lit8 v7, v7, 0x1

    move-wide v12, v5

    move-wide v10, v14

    goto :goto_79

    :cond_ad
    iput-wide v8, v0, Lu/a$a;->b:D

    const/4 v1, 0x0

    :goto_b0
    sget-object v2, Lu/a$a;->s:[D

    if-ge v1, v15, :cond_bc

    aget-wide v3, v2, v1

    div-double/2addr v3, v8

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    :cond_bc
    const/4 v14, 0x0

    :goto_bd
    iget-object v1, v0, Lu/a$a;->a:[D

    array-length v2, v1

    if-ge v14, v2, :cond_fd

    int-to-double v2, v14

    array-length v1, v1

    const/4 v4, -0x1

    add-int/2addr v1, v4

    int-to-double v6, v1

    div-double/2addr v2, v6

    sget-object v1, Lu/a$a;->s:[D

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v4

    if-ltz v4, :cond_db

    iget-object v1, v0, Lu/a$a;->a:[D

    int-to-double v2, v4

    int-to-double v6, v5

    div-double/2addr v2, v6

    aput-wide v2, v1, v14

    const/4 v6, -0x1

    const-wide/16 v7, 0x0

    goto :goto_fa

    :cond_db
    const/4 v6, -0x1

    if-ne v4, v6, :cond_e5

    iget-object v1, v0, Lu/a$a;->a:[D

    const-wide/16 v7, 0x0

    aput-wide v7, v1, v14

    goto :goto_fa

    :cond_e5
    const-wide/16 v7, 0x0

    neg-int v4, v4

    add-int/lit8 v9, v4, -0x2

    add-int/2addr v4, v6

    int-to-double v10, v9

    aget-wide v12, v1, v9

    sub-double/2addr v2, v12

    aget-wide v15, v1, v4

    sub-double/2addr v15, v12

    div-double/2addr v2, v15

    add-double/2addr v2, v10

    int-to-double v9, v5

    div-double/2addr v2, v9

    iget-object v1, v0, Lu/a$a;->a:[D

    aput-wide v2, v1, v14

    :goto_fa
    add-int/lit8 v14, v14, 0x1

    goto :goto_bd

    :cond_fd
    iget-wide v1, v0, Lu/a$a;->b:D

    iget-wide v3, v0, Lu/a$a;->i:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lu/a$a;->n:D

    return-void

    :cond_105
    :goto_105
    move v5, v15

    iput-boolean v5, v0, Lu/a$a;->r:Z

    iput-wide v6, v0, Lu/a$a;->e:D

    iput-wide v10, v0, Lu/a$a;->f:D

    iput-wide v8, v0, Lu/a$a;->g:D

    iput-wide v12, v0, Lu/a$a;->h:D

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lu/a$a;->b:D

    iget-wide v7, v0, Lu/a$a;->i:D

    mul-double/2addr v5, v7

    iput-wide v5, v0, Lu/a$a;->n:D

    iget-wide v5, v0, Lu/a$a;->d:D

    iget-wide v7, v0, Lu/a$a;->c:D

    sub-double v9, v5, v7

    div-double/2addr v1, v9

    iput-wide v1, v0, Lu/a$a;->l:D

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    iput-wide v3, v0, Lu/a$a;->m:D

    return-void
.end method


# virtual methods
.method public final a()D
    .registers 7

    iget-wide v0, p0, Lu/a$a;->j:D

    iget-wide v2, p0, Lu/a$a;->p:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lu/a$a;->k:D

    neg-double v2, v2

    iget-wide v4, p0, Lu/a$a;->o:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lu/a$a;->n:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    div-double/2addr v4, v2

    iget-boolean v2, p0, Lu/a$a;->q:Z

    if-eqz v2, :cond_17

    neg-double v0, v0

    :cond_17
    mul-double/2addr v0, v4

    return-wide v0
.end method

.method public final b()D
    .registers 7

    iget-wide v0, p0, Lu/a$a;->j:D

    iget-wide v2, p0, Lu/a$a;->p:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lu/a$a;->k:D

    neg-double v2, v2

    iget-wide v4, p0, Lu/a$a;->o:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lu/a$a;->n:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    div-double/2addr v4, v0

    iget-boolean v0, p0, Lu/a$a;->q:Z

    if-eqz v0, :cond_19

    neg-double v0, v2

    mul-double/2addr v0, v4

    goto :goto_1b

    :cond_19
    mul-double v0, v2, v4

    :goto_1b
    return-wide v0
.end method

.method public final c(D)D
    .registers 7

    iget-wide v0, p0, Lu/a$a;->c:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lu/a$a;->i:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Lu/a$a;->e:D

    iget-wide v2, p0, Lu/a$a;->f:D

    sub-double/2addr v2, v0

    mul-double/2addr v2, p1

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public final d(D)D
    .registers 7

    iget-wide v0, p0, Lu/a$a;->c:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lu/a$a;->i:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Lu/a$a;->g:D

    iget-wide v2, p0, Lu/a$a;->h:D

    sub-double/2addr v2, v0

    mul-double/2addr v2, p1

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public final e()D
    .registers 7

    iget-wide v0, p0, Lu/a$a;->l:D

    iget-wide v2, p0, Lu/a$a;->j:D

    iget-wide v4, p0, Lu/a$a;->o:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public final f()D
    .registers 7

    iget-wide v0, p0, Lu/a$a;->m:D

    iget-wide v2, p0, Lu/a$a;->k:D

    iget-wide v4, p0, Lu/a$a;->p:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public final g(D)V
    .registers 11

    iget-boolean v0, p0, Lu/a$a;->q:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lu/a$a;->d:D

    sub-double/2addr v0, p1

    goto :goto_c

    :cond_8
    iget-wide v0, p0, Lu/a$a;->c:D

    sub-double v0, p1, v0

    :goto_c
    iget-wide p1, p0, Lu/a$a;->i:D

    mul-double/2addr v0, p1

    const-wide p1, 0x3ff921fb54442d18L  # 1.5707963267948966

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1b

    goto :goto_36

    :cond_1b
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_22

    goto :goto_36

    :cond_22
    iget-object v2, p0, Lu/a$a;->a:[D

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    int-to-double v3, v3

    mul-double/2addr v0, v3

    double-to-int v3, v0

    int-to-double v4, v3

    sub-double/2addr v0, v4

    aget-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    aget-wide v6, v2, v3

    sub-double/2addr v6, v4

    mul-double/2addr v6, v0

    add-double v2, v6, v4

    :goto_36
    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    iput-wide p1, p0, Lu/a$a;->o:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lu/a$a;->p:D

    return-void
.end method
