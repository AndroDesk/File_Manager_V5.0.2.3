.class public final Lu/g;
.super Lu/b;
.source "MonotonicCurveFit.java"


# instance fields
.field public a:[D

.field public b:[[D

.field public c:[[D

.field public d:[D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([D[[D)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Lu/b;-><init>()V

    array-length v3, v1

    const/4 v4, 0x0

    aget-object v5, v2, v4

    array-length v5, v5

    new-array v6, v5, [D

    iput-object v6, v0, Lu/g;->d:[D

    add-int/lit8 v6, v3, -0x1

    const/4 v7, 0x2

    new-array v8, v7, [I

    const/4 v9, 0x1

    aput v5, v8, v9

    aput v6, v8, v4

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    new-array v7, v7, [I

    aput v5, v7, v9

    aput v3, v7, v4

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    move v9, v4

    :goto_33
    if-ge v9, v5, :cond_74

    move v10, v4

    :goto_36
    if-ge v10, v6, :cond_67

    add-int/lit8 v11, v10, 0x1

    aget-wide v12, v1, v11

    aget-wide v14, v1, v10

    sub-double/2addr v12, v14

    aget-object v14, v8, v10

    aget-object v15, v2, v11

    aget-wide v16, v15, v9

    aget-object v15, v2, v10

    aget-wide v18, v15, v9

    sub-double v16, v16, v18

    div-double v16, v16, v12

    aput-wide v16, v14, v9

    if-nez v10, :cond_56

    aget-object v10, v7, v10

    aput-wide v16, v10, v9

    goto :goto_65

    :cond_56
    aget-object v12, v7, v10

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v8, v10

    aget-wide v13, v10, v9

    add-double v13, v13, v16

    const-wide/high16 v15, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v13, v15

    aput-wide v13, v12, v9

    :goto_65
    move v10, v11

    goto :goto_36

    :cond_67
    aget-object v10, v7, v6

    add-int/lit8 v11, v3, -0x2

    aget-object v11, v8, v11

    aget-wide v12, v11, v9

    aput-wide v12, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :cond_74
    move v3, v4

    :goto_75
    if-ge v3, v6, :cond_c6

    move v9, v4

    :goto_78
    if-ge v9, v5, :cond_c3

    aget-object v10, v8, v3

    aget-wide v11, v10, v9

    const-wide/16 v13, 0x0

    cmpl-double v10, v11, v13

    if-nez v10, :cond_8f

    aget-object v10, v7, v3

    aput-wide v13, v10, v9

    add-int/lit8 v10, v3, 0x1

    aget-object v10, v7, v10

    aput-wide v13, v10, v9

    goto :goto_c0

    :cond_8f
    aget-object v10, v7, v3

    aget-wide v13, v10, v9

    div-double/2addr v13, v11

    add-int/lit8 v10, v3, 0x1

    aget-object v15, v7, v10

    aget-wide v16, v15, v9

    div-double v11, v16, v11

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v15

    const-wide/high16 v17, 0x4022000000000000L  # 9.0

    cmpl-double v17, v15, v17

    if-lez v17, :cond_c0

    const-wide/high16 v17, 0x4008000000000000L  # 3.0

    div-double v17, v17, v15

    aget-object v15, v7, v3

    mul-double v13, v13, v17

    aget-object v16, v8, v3

    aget-wide v19, v16, v9

    mul-double v13, v13, v19

    aput-wide v13, v15, v9

    aget-object v10, v7, v10

    mul-double v17, v17, v11

    aget-wide v11, v16, v9

    mul-double v17, v17, v11

    aput-wide v17, v10, v9

    :cond_c0
    :goto_c0
    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    :cond_c3
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    :cond_c6
    iput-object v1, v0, Lu/g;->a:[D

    iput-object v2, v0, Lu/g;->b:[[D

    iput-object v7, v0, Lu/g;->c:[[D

    return-void
.end method

.method public static f(DDDDDD)D
    .registers 22

    mul-double v0, p2, p2

    const-wide/high16 v2, -0x3fe8000000000000L  # -6.0

    mul-double/2addr v2, v0

    mul-double v2, v2, p6

    const-wide/high16 v4, 0x4018000000000000L  # 6.0

    mul-double v6, p2, v4

    mul-double v8, v6, p6

    add-double/2addr v8, v2

    mul-double/2addr v4, v0

    mul-double/2addr v4, p4

    add-double/2addr v4, v8

    mul-double/2addr v6, p4

    sub-double/2addr v4, v6

    const-wide/high16 v2, 0x4008000000000000L  # 3.0

    mul-double/2addr v2, p0

    mul-double v6, v2, p10

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    mul-double v2, v2, p8

    mul-double/2addr v2, v0

    add-double/2addr v2, v6

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    mul-double/2addr v0, p0

    mul-double v0, v0, p10

    mul-double/2addr v0, p2

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    mul-double/2addr v0, p0

    mul-double v0, v0, p8

    mul-double/2addr v0, p2

    sub-double/2addr v2, v0

    mul-double v0, p0, p8

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static h(DDDDDD)D
    .registers 24

    mul-double v0, p2, p2

    mul-double v2, v0, p2

    const-wide/high16 v4, -0x4000000000000000L  # -2.0

    mul-double/2addr v4, v2

    mul-double v4, v4, p6

    const-wide/high16 v6, 0x4008000000000000L  # 3.0

    mul-double/2addr v6, v0

    mul-double v8, v6, p6

    add-double/2addr v8, v4

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    mul-double v10, v2, v4

    mul-double v10, v10, p4

    add-double/2addr v10, v8

    mul-double v6, v6, p4

    sub-double/2addr v10, v6

    add-double v10, v10, p4

    mul-double v6, p0, p10

    mul-double v8, v6, v2

    add-double/2addr v8, v10

    mul-double v10, p0, p8

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    mul-double/2addr v6, v0

    sub-double/2addr v2, v6

    mul-double/2addr v4, p0

    mul-double v4, v4, p8

    mul-double/2addr v4, v0

    sub-double/2addr v2, v4

    mul-double/2addr v10, p2

    add-double/2addr v10, v2

    return-wide v10
.end method


# virtual methods
.method public final b(D)D
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lu/g;->a:[D

    array-length v2, v1

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_1b

    iget-object v1, v0, Lu/g;->b:[[D

    aget-object v1, v1, v3

    aget-wide v2, v1, v3

    sub-double v6, p1, v4

    invoke-virtual {v0, v4, v5}, Lu/g;->g(D)D

    move-result-wide v4

    :goto_18
    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    return-wide v4

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    aget-wide v4, v1, v2

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_30

    iget-object v1, v0, Lu/g;->b:[[D

    aget-object v1, v1, v2

    aget-wide v2, v1, v3

    sub-double v6, p1, v4

    invoke-virtual {v0, v4, v5}, Lu/g;->g(D)D

    move-result-wide v4

    goto :goto_18

    :cond_30
    move v1, v3

    :goto_31
    if-ge v1, v2, :cond_6b

    iget-object v4, v0, Lu/g;->a:[D

    aget-wide v5, v4, v1

    cmpl-double v7, p1, v5

    if-nez v7, :cond_42

    iget-object v2, v0, Lu/g;->b:[[D

    aget-object v1, v2, v1

    aget-wide v2, v1, v3

    return-wide v2

    :cond_42
    add-int/lit8 v7, v1, 0x1

    aget-wide v8, v4, v7

    cmpg-double v4, p1, v8

    if-gez v4, :cond_69

    sub-double v10, v8, v5

    sub-double v4, p1, v5

    div-double v12, v4, v10

    iget-object v2, v0, Lu/g;->b:[[D

    aget-object v4, v2, v1

    aget-wide v14, v4, v3

    aget-object v2, v2, v7

    aget-wide v16, v2, v3

    iget-object v2, v0, Lu/g;->c:[[D

    aget-object v1, v2, v1

    aget-wide v18, v1, v3

    aget-object v1, v2, v7

    aget-wide v20, v1, v3

    invoke-static/range {v10 .. v21}, Lu/g;->h(DDDDDD)D

    move-result-wide v1

    return-wide v1

    :cond_69
    move v1, v7

    goto :goto_31

    :cond_6b
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public final c(D[D)V
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lu/g;->a:[D

    array-length v2, v1

    iget-object v3, v0, Lu/g;->b:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    aget-wide v5, v1, v4

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_31

    iget-object v1, v0, Lu/g;->d:[D

    invoke-virtual {v0, v5, v6, v1}, Lu/g;->e(D[D)V

    move v1, v4

    :goto_17
    if-ge v1, v3, :cond_30

    iget-object v2, v0, Lu/g;->b:[[D

    aget-object v2, v2, v4

    aget-wide v5, v2, v1

    iget-object v2, v0, Lu/g;->a:[D

    aget-wide v7, v2, v4

    sub-double v7, p1, v7

    iget-object v2, v0, Lu/g;->d:[D

    aget-wide v9, v2, v1

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    aput-wide v7, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_30
    return-void

    :cond_31
    add-int/lit8 v5, v2, -0x1

    aget-wide v6, v1, v5

    cmpl-double v1, p1, v6

    if-ltz v1, :cond_58

    iget-object v1, v0, Lu/g;->d:[D

    invoke-virtual {v0, v6, v7, v1}, Lu/g;->e(D[D)V

    :goto_3e
    if-ge v4, v3, :cond_57

    iget-object v1, v0, Lu/g;->b:[[D

    aget-object v1, v1, v5

    aget-wide v6, v1, v4

    iget-object v1, v0, Lu/g;->a:[D

    aget-wide v8, v1, v5

    sub-double v1, p1, v8

    iget-object v8, v0, Lu/g;->d:[D

    aget-wide v9, v8, v4

    mul-double/2addr v1, v9

    add-double/2addr v1, v6

    aput-wide v1, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_57
    return-void

    :cond_58
    move v1, v4

    :goto_59
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_a7

    iget-object v5, v0, Lu/g;->a:[D

    aget-wide v6, v5, v1

    cmpl-double v5, p1, v6

    if-nez v5, :cond_73

    move v5, v4

    :goto_66
    if-ge v5, v3, :cond_73

    iget-object v6, v0, Lu/g;->b:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v5

    aput-wide v7, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    :cond_73
    iget-object v5, v0, Lu/g;->a:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v7, v5, v6

    cmpg-double v9, p1, v7

    if-gez v9, :cond_a5

    aget-wide v9, v5, v1

    sub-double/2addr v7, v9

    sub-double v9, p1, v9

    div-double/2addr v9, v7

    :goto_83
    if-ge v4, v3, :cond_a4

    iget-object v2, v0, Lu/g;->b:[[D

    aget-object v5, v2, v1

    aget-wide v15, v5, v4

    aget-object v2, v2, v6

    aget-wide v17, v2, v4

    iget-object v2, v0, Lu/g;->c:[[D

    aget-object v5, v2, v1

    aget-wide v19, v5, v4

    aget-object v2, v2, v6

    aget-wide v21, v2, v4

    move-wide v11, v7

    move-wide v13, v9

    invoke-static/range {v11 .. v22}, Lu/g;->h(DDDDDD)D

    move-result-wide v11

    aput-wide v11, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    :cond_a4
    return-void

    :cond_a5
    move v1, v6

    goto :goto_59

    :cond_a7
    return-void
.end method

.method public final d(D[F)V
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lu/g;->a:[D

    array-length v2, v1

    iget-object v3, v0, Lu/g;->b:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    aget-wide v5, v1, v4

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_32

    iget-object v1, v0, Lu/g;->d:[D

    invoke-virtual {v0, v5, v6, v1}, Lu/g;->e(D[D)V

    move v1, v4

    :goto_17
    if-ge v1, v3, :cond_31

    iget-object v2, v0, Lu/g;->b:[[D

    aget-object v2, v2, v4

    aget-wide v5, v2, v1

    iget-object v2, v0, Lu/g;->a:[D

    aget-wide v7, v2, v4

    sub-double v7, p1, v7

    iget-object v2, v0, Lu/g;->d:[D

    aget-wide v9, v2, v1

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    double-to-float v2, v7

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_31
    return-void

    :cond_32
    add-int/lit8 v2, v2, -0x1

    aget-wide v5, v1, v2

    cmpl-double v1, p1, v5

    if-ltz v1, :cond_5a

    iget-object v1, v0, Lu/g;->d:[D

    invoke-virtual {v0, v5, v6, v1}, Lu/g;->e(D[D)V

    :goto_3f
    if-ge v4, v3, :cond_59

    iget-object v1, v0, Lu/g;->b:[[D

    aget-object v1, v1, v2

    aget-wide v5, v1, v4

    iget-object v1, v0, Lu/g;->a:[D

    aget-wide v7, v1, v2

    sub-double v7, p1, v7

    iget-object v1, v0, Lu/g;->d:[D

    aget-wide v9, v1, v4

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    double-to-float v1, v7

    aput v1, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_59
    return-void

    :cond_5a
    move v1, v4

    :goto_5b
    if-ge v1, v2, :cond_a9

    iget-object v5, v0, Lu/g;->a:[D

    aget-wide v6, v5, v1

    cmpl-double v5, p1, v6

    if-nez v5, :cond_74

    move v5, v4

    :goto_66
    if-ge v5, v3, :cond_74

    iget-object v6, v0, Lu/g;->b:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v5

    double-to-float v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    :cond_74
    iget-object v5, v0, Lu/g;->a:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v7, v5, v6

    cmpg-double v9, p1, v7

    if-gez v9, :cond_a7

    aget-wide v9, v5, v1

    sub-double/2addr v7, v9

    sub-double v9, p1, v9

    div-double/2addr v9, v7

    :goto_84
    if-ge v4, v3, :cond_a6

    iget-object v2, v0, Lu/g;->b:[[D

    aget-object v5, v2, v1

    aget-wide v15, v5, v4

    aget-object v2, v2, v6

    aget-wide v17, v2, v4

    iget-object v2, v0, Lu/g;->c:[[D

    aget-object v5, v2, v1

    aget-wide v19, v5, v4

    aget-object v2, v2, v6

    aget-wide v21, v2, v4

    move-wide v11, v7

    move-wide v13, v9

    invoke-static/range {v11 .. v22}, Lu/g;->h(DDDDDD)D

    move-result-wide v11

    double-to-float v2, v11

    aput v2, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    :cond_a6
    return-void

    :cond_a7
    move v1, v6

    goto :goto_5b

    :cond_a9
    return-void
.end method

.method public final e(D[D)V
    .registers 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lu/g;->a:[D

    array-length v2, v1

    iget-object v3, v0, Lu/g;->b:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    aget-wide v5, v1, v4

    cmpg-double v7, p1, v5

    if-gtz v7, :cond_12

    goto :goto_1d

    :cond_12
    add-int/lit8 v5, v2, -0x1

    aget-wide v5, v1, v5

    cmpl-double v1, p1, v5

    if-ltz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    move-wide/from16 v5, p1

    :goto_1d
    move v1, v4

    :goto_1e
    add-int/lit8 v7, v2, -0x1

    if-ge v1, v7, :cond_55

    iget-object v7, v0, Lu/g;->a:[D

    add-int/lit8 v8, v1, 0x1

    aget-wide v9, v7, v8

    cmpg-double v11, v5, v9

    if-gtz v11, :cond_53

    aget-wide v11, v7, v1

    sub-double/2addr v9, v11

    sub-double/2addr v5, v11

    div-double/2addr v5, v9

    :goto_31
    if-ge v4, v3, :cond_55

    iget-object v2, v0, Lu/g;->b:[[D

    aget-object v7, v2, v1

    aget-wide v17, v7, v4

    aget-object v2, v2, v8

    aget-wide v19, v2, v4

    iget-object v2, v0, Lu/g;->c:[[D

    aget-object v7, v2, v1

    aget-wide v21, v7, v4

    aget-object v2, v2, v8

    aget-wide v23, v2, v4

    move-wide v13, v9

    move-wide v15, v5

    invoke-static/range {v13 .. v24}, Lu/g;->f(DDDDDD)D

    move-result-wide v11

    div-double/2addr v11, v9

    aput-wide v11, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_53
    move v1, v8

    goto :goto_1e

    :cond_55
    return-void
.end method

.method public final g(D)D
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lu/g;->a:[D

    array-length v2, v1

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    cmpg-double v6, p1, v4

    if-gez v6, :cond_e

    :goto_c
    move v1, v3

    goto :goto_1a

    :cond_e
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v1, v4

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_17

    goto :goto_c

    :cond_17
    move-wide/from16 v4, p1

    goto :goto_c

    :goto_1a
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_4b

    iget-object v6, v0, Lu/g;->a:[D

    add-int/lit8 v7, v1, 0x1

    aget-wide v8, v6, v7

    cmpg-double v10, v4, v8

    if-gtz v10, :cond_49

    aget-wide v10, v6, v1

    sub-double/2addr v8, v10

    sub-double/2addr v4, v10

    div-double v14, v4, v8

    iget-object v2, v0, Lu/g;->b:[[D

    aget-object v4, v2, v1

    aget-wide v16, v4, v3

    aget-object v2, v2, v7

    aget-wide v18, v2, v3

    iget-object v2, v0, Lu/g;->c:[[D

    aget-object v1, v2, v1

    aget-wide v20, v1, v3

    aget-object v1, v2, v7

    aget-wide v22, v1, v3

    move-wide v12, v8

    invoke-static/range {v12 .. v23}, Lu/g;->f(DDDDDD)D

    move-result-wide v1

    div-double/2addr v1, v8

    return-wide v1

    :cond_49
    move v1, v7

    goto :goto_1a

    :cond_4b
    const-wide/16 v1, 0x0

    return-wide v1
.end method
