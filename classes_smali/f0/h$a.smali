.class public final Lf0/h$a;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:C

.field public b:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(C[F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lf0/h$a;->a:C

    iput-object p2, p0, Lf0/h$a;->b:[F

    return-void
.end method

.method public constructor <init>(Lf0/h$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-char v0, p1, Lf0/h$a;->a:C

    iput-char v0, p0, Lf0/h$a;->a:C

    iget-object p1, p1, Lf0/h$a;->b:[F

    array-length v0, p1

    invoke-static {p1, v0}, Lf0/h;->b([FI)[F

    move-result-object p1

    iput-object p1, p0, Lf0/h$a;->b:[F

    return-void
.end method

.method public static a(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 61

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v7, p7

    move/from16 v9, p9

    float-to-double v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v1

    mul-double v16, v14, v10

    move/from16 v6, p2

    float-to-double v7, v6

    mul-double v18, v7, v12

    add-double v18, v18, v16

    move-wide/from16 v16, v14

    float-to-double v14, v0

    div-double v18, v18, v14

    neg-float v6, v1

    move-wide/from16 v20, v4

    float-to-double v4, v6

    mul-double/2addr v4, v12

    mul-double v22, v7, v10

    add-double v22, v22, v4

    float-to-double v4, v2

    div-double v22, v22, v4

    move-wide/from16 v24, v7

    float-to-double v6, v3

    mul-double/2addr v6, v10

    move/from16 v8, p4

    float-to-double v1, v8

    mul-double v26, v1, v12

    add-double v26, v26, v6

    div-double v26, v26, v14

    neg-float v6, v3

    float-to-double v6, v6

    mul-double/2addr v6, v12

    mul-double/2addr v1, v10

    add-double/2addr v1, v6

    div-double/2addr v1, v4

    sub-double v6, v18, v26

    sub-double v28, v22, v1

    add-double v30, v18, v26

    const-wide/high16 v32, 0x4000000000000000L  # 2.0

    div-double v30, v30, v32

    add-double v34, v22, v1

    div-double v34, v34, v32

    mul-double v36, v6, v6

    mul-double v38, v28, v28

    move-wide/from16 v40, v12

    add-double v12, v38, v36

    const-wide/16 v36, 0x0

    cmpl-double v38, v12, v36

    const-string v3, "PathParser"

    if-nez v38, :cond_6b

    const-string v0, " Points are coincident"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6b
    const-wide/high16 v38, 0x3ff0000000000000L  # 1.0

    div-double v42, v38, v12

    const-wide/high16 v44, 0x3fd0000000000000L  # 0.25

    sub-double v42, v42, v44

    cmpg-double v44, v42, v36

    if-gez v44, :cond_ae

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Points are too far apart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x3ffffff583a53b8eL  # 1.99999

    div-double/2addr v1, v3

    double-to-float v1, v1

    mul-float v5, v0, v1

    mul-float v6, p6, v1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lf0/h$a;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    :cond_ae
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v6, v12

    mul-double v12, v12, v28

    move/from16 v0, p8

    if-ne v0, v9, :cond_be

    sub-double v30, v30, v12

    add-double v34, v34, v6

    goto :goto_c2

    :cond_be
    add-double v30, v30, v12

    sub-double v34, v34, v6

    :goto_c2
    sub-double v6, v22, v34

    sub-double v12, v18, v30

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v1, v1, v34

    sub-double v12, v26, v30

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr v0, v6

    cmpl-double v2, v0, v36

    if-ltz v2, :cond_d9

    const/4 v8, 0x1

    goto :goto_da

    :cond_d9
    const/4 v8, 0x0

    :goto_da
    if-eq v9, v8, :cond_e6

    const-wide v8, 0x401921fb54442d18L  # 6.283185307179586

    if-lez v2, :cond_e5

    sub-double/2addr v0, v8

    goto :goto_e6

    :cond_e5
    add-double/2addr v0, v8

    :cond_e6
    :goto_e6
    mul-double v30, v30, v14

    mul-double v34, v34, v4

    mul-double v8, v30, v10

    mul-double v12, v34, v40

    sub-double/2addr v8, v12

    mul-double v30, v30, v40

    mul-double v34, v34, v10

    add-double v34, v34, v30

    const-wide/high16 v10, 0x4010000000000000L  # 4.0

    mul-double v12, v0, v10

    const-wide v18, 0x400921fb54442d18L  # Math.PI

    div-double v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    neg-double v10, v14

    mul-double v26, v10, v12

    mul-double v28, v26, v22

    mul-double v30, v4, v18

    mul-double v36, v30, v20

    sub-double v28, v28, v36

    mul-double v10, v10, v18

    mul-double v22, v22, v10

    mul-double/2addr v4, v12

    mul-double v20, v20, v4

    add-double v20, v20, v22

    move-wide/from16 p4, v4

    int-to-double v3, v2

    div-double/2addr v0, v3

    const/4 v3, 0x0

    :goto_132
    if-ge v3, v2, :cond_1d7

    add-double v4, v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v36

    mul-double v40, v14, v12

    mul-double v40, v40, v36

    add-double v40, v40, v8

    mul-double v42, v30, v22

    move-wide/from16 p6, v0

    sub-double v0, v40, v42

    mul-double v40, v14, v18

    mul-double v40, v40, v36

    add-double v40, v40, v34

    move-wide/from16 v42, p4

    mul-double v44, v42, v22

    move-wide/from16 p3, v8

    add-double v8, v44, v40

    mul-double v40, v26, v22

    mul-double v44, v30, v36

    sub-double v40, v40, v44

    mul-double v22, v22, v10

    mul-double v36, v36, v42

    add-double v22, v36, v22

    sub-double v6, v4, v6

    div-double v36, v6, v32

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->tan(D)D

    move-result-wide v36

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v44, 0x4008000000000000L  # 3.0

    mul-double v46, v36, v44

    mul-double v46, v46, v36

    const-wide/high16 v36, 0x4010000000000000L  # 4.0

    add-double v46, v46, v36

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v46

    sub-double v46, v46, v38

    mul-double v46, v46, v6

    div-double v46, v46, v44

    mul-double v28, v28, v46

    add-double v6, v28, v16

    mul-double v20, v20, v46

    move-wide/from16 p1, v4

    add-double v4, v20, v24

    mul-double v16, v46, v40

    move-wide/from16 p8, v10

    sub-double v10, v0, v16

    mul-double v46, v46, v22

    move-wide/from16 v16, v12

    sub-double v12, v8, v46

    move/from16 v20, v2

    const/4 v2, 0x0

    move-wide/from16 v24, v14

    move-object/from16 v14, p0

    invoke-virtual {v14, v2, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v2, v6

    double-to-float v4, v4

    double-to-float v5, v10

    double-to-float v6, v12

    double-to-float v7, v0

    double-to-float v10, v8

    move-object/from16 v44, p0

    move/from16 v45, v2

    move/from16 v46, v4

    move/from16 v47, v5

    move/from16 v48, v6

    move/from16 v49, v7

    move/from16 v50, v10

    invoke-virtual/range {v44 .. v50}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v10, p8

    move-wide/from16 v12, v16

    move/from16 v2, v20

    move-wide/from16 v20, v22

    move-wide/from16 v14, v24

    move-wide/from16 v28, v40

    move-wide/from16 v16, v0

    move-wide/from16 v24, v8

    move-wide/from16 v8, p3

    move-wide/from16 v0, p6

    move-wide/from16 p4, v42

    goto/16 :goto_132

    :cond_1d7
    return-void
.end method

.method public static b([Lf0/h$a;Landroid/graphics/Path;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v12, 0x6

    new-array v13, v12, [F

    const/16 v14, 0x6d

    const/4 v15, 0x0

    move v1, v14

    move v10, v15

    :goto_c
    array-length v2, v0

    if-ge v10, v2, :cond_3c0

    aget-object v2, v0, v10

    iget-char v9, v2, Lf0/h$a;->a:C

    iget-object v8, v2, Lf0/h$a;->b:[F

    aget v2, v13, v15

    const/16 v16, 0x1

    aget v3, v13, v16

    const/16 v17, 0x2

    aget v4, v13, v17

    const/16 v18, 0x3

    aget v5, v13, v18

    const/16 v19, 0x4

    aget v6, v13, v19

    const/16 v20, 0x5

    aget v7, v13, v20

    sparse-switch v9, :sswitch_data_3c2

    goto :goto_46

    :sswitch_2f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    invoke-virtual {v11, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v6

    move v4, v2

    move v3, v7

    move v5, v3

    goto :goto_46

    :sswitch_3a
    move/from16 v21, v19

    goto :goto_48

    :sswitch_3d
    move/from16 v21, v16

    goto :goto_48

    :sswitch_40
    move/from16 v21, v12

    goto :goto_48

    :sswitch_43
    const/16 v21, 0x7

    goto :goto_48

    :goto_46
    move/from16 v21, v17

    :goto_48
    move/from16 v22, v6

    move/from16 v23, v7

    move v7, v2

    move v6, v3

    move v3, v15

    :goto_4f
    array-length v2, v8

    if-ge v3, v2, :cond_3a1

    const/16 v2, 0x41

    if-eq v9, v2, :cond_34a

    const/16 v2, 0x43

    if-eq v9, v2, :cond_317

    const/16 v15, 0x48

    if-eq v9, v15, :cond_303

    const/16 v15, 0x51

    if-eq v9, v15, :cond_2dd

    const/16 v12, 0x56

    if-eq v9, v12, :cond_2c9

    const/16 v12, 0x61

    if-eq v9, v12, :cond_275

    const/16 v12, 0x63

    if-eq v9, v12, :cond_239

    const/16 v2, 0x68

    if-eq v9, v2, :cond_228

    const/16 v2, 0x71

    if-eq v9, v2, :cond_203

    const/16 v12, 0x76

    if-eq v9, v12, :cond_1f0

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_1db

    const/16 v12, 0x4d

    if-eq v9, v12, :cond_1be

    const/16 v12, 0x73

    const/high16 v27, 0x40000000  # 2.0f

    const/16 v15, 0x53

    if-eq v9, v15, :cond_17f

    const/16 v15, 0x74

    const/16 v2, 0x54

    if-eq v9, v2, :cond_148

    const/16 v2, 0x6c

    if-eq v9, v2, :cond_131

    if-eq v9, v14, :cond_111

    if-eq v9, v12, :cond_ca

    if-eq v9, v15, :cond_9b

    goto :goto_c6

    :cond_9b
    const/16 v2, 0x71

    if-eq v1, v2, :cond_ad

    if-eq v1, v15, :cond_ad

    const/16 v2, 0x51

    if-eq v1, v2, :cond_ad

    const/16 v2, 0x54

    if-ne v1, v2, :cond_aa

    goto :goto_ad

    :cond_aa
    const/4 v1, 0x0

    const/4 v12, 0x0

    goto :goto_b1

    :cond_ad
    :goto_ad
    sub-float v12, v7, v4

    sub-float v1, v6, v5

    :goto_b1
    add-int/lit8 v2, v3, 0x0

    aget v4, v8, v2

    add-int/lit8 v5, v3, 0x1

    aget v15, v8, v5

    invoke-virtual {v11, v12, v1, v4, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v12, v7

    add-float/2addr v1, v6

    aget v2, v8, v2

    add-float/2addr v7, v2

    aget v2, v8, v5

    add-float/2addr v6, v2

    move v5, v1

    move v4, v12

    :goto_c6
    move/from16 v29, v3

    goto/16 :goto_26d

    :cond_ca
    const/16 v2, 0x63

    if-eq v1, v2, :cond_dd

    if-eq v1, v12, :cond_dd

    const/16 v2, 0x43

    if-eq v1, v2, :cond_dd

    const/16 v2, 0x53

    if-ne v1, v2, :cond_d9

    goto :goto_dd

    :cond_d9
    const/4 v2, 0x0

    const/16 v24, 0x0

    goto :goto_e4

    :cond_dd
    :goto_dd
    sub-float v1, v7, v4

    sub-float v2, v6, v5

    move/from16 v24, v2

    move v2, v1

    :goto_e4
    add-int/lit8 v12, v3, 0x0

    aget v4, v8, v12

    add-int/lit8 v15, v3, 0x1

    aget v5, v8, v15

    add-int/lit8 v25, v3, 0x2

    aget v26, v8, v25

    add-int/lit8 v27, v3, 0x3

    aget v28, v8, v27

    move-object/from16 v1, p1

    move/from16 v29, v3

    move/from16 v3, v24

    move v14, v6

    move/from16 v6, v26

    move v0, v7

    move/from16 v7, v28

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v1, v8, v12

    add-float/2addr v1, v0

    aget v2, v8, v15

    add-float/2addr v2, v14

    aget v3, v8, v25

    add-float v7, v0, v3

    aget v0, v8, v27

    goto/16 :goto_266

    :cond_111
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    add-int/lit8 v3, v29, 0x0

    aget v1, v8, v3

    add-float v7, v0, v1

    add-int/lit8 v3, v29, 0x1

    aget v0, v8, v3

    add-float v6, v14, v0

    if-lez v29, :cond_128

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    goto/16 :goto_26d

    :cond_128
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rMoveTo(FF)V

    move/from16 v23, v6

    move/from16 v22, v7

    goto/16 :goto_1d5

    :cond_131
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    add-int/lit8 v3, v29, 0x0

    aget v1, v8, v3

    add-int/lit8 v2, v29, 0x1

    aget v6, v8, v2

    invoke-virtual {v11, v1, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v1, v8, v3

    add-float v7, v0, v1

    aget v0, v8, v2

    goto/16 :goto_1ff

    :cond_148
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    const/16 v2, 0x71

    if-eq v1, v2, :cond_15e

    if-eq v1, v15, :cond_15e

    const/16 v2, 0x51

    if-eq v1, v2, :cond_15e

    const/16 v2, 0x54

    if-ne v1, v2, :cond_15b

    goto :goto_15e

    :cond_15b
    move v7, v0

    move v6, v14

    goto :goto_164

    :cond_15e
    :goto_15e
    mul-float v7, v0, v27

    sub-float/2addr v7, v4

    mul-float v6, v14, v27

    sub-float/2addr v6, v5

    :goto_164
    add-int/lit8 v3, v29, 0x0

    aget v0, v8, v3

    add-int/lit8 v1, v29, 0x1

    aget v2, v8, v1

    invoke-virtual {v11, v7, v6, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v0, v8, v3

    aget v1, v8, v1

    move v5, v6

    move v4, v7

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    move v7, v0

    move v6, v1

    goto/16 :goto_390

    :cond_17f
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    const/16 v2, 0x63

    if-eq v1, v2, :cond_195

    if-eq v1, v12, :cond_195

    const/16 v2, 0x43

    if-eq v1, v2, :cond_195

    const/16 v2, 0x53

    if-ne v1, v2, :cond_192

    goto :goto_195

    :cond_192
    move v2, v0

    move v3, v14

    goto :goto_19d

    :cond_195
    :goto_195
    mul-float v7, v0, v27

    sub-float/2addr v7, v4

    mul-float v6, v14, v27

    sub-float/2addr v6, v5

    move v3, v6

    move v2, v7

    :goto_19d
    add-int/lit8 v0, v29, 0x0

    aget v4, v8, v0

    add-int/lit8 v12, v29, 0x1

    aget v5, v8, v12

    add-int/lit8 v14, v29, 0x2

    aget v6, v8, v14

    add-int/lit8 v15, v29, 0x3

    aget v7, v8, v15

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v0, v8, v0

    aget v1, v8, v12

    aget v2, v8, v14

    aget v3, v8, v15

    move v4, v0

    move v5, v1

    goto/16 :goto_26b

    :cond_1be
    move/from16 v29, v3

    add-int/lit8 v3, v29, 0x0

    aget v0, v8, v3

    add-int/lit8 v3, v29, 0x1

    aget v1, v8, v3

    if-lez v29, :cond_1ce

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1ec

    :cond_1ce
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v22, v0

    move/from16 v23, v1

    :goto_1d5
    move/from16 v7, v22

    move/from16 v6, v23

    goto/16 :goto_26d

    :cond_1db
    move/from16 v29, v3

    add-int/lit8 v3, v29, 0x0

    aget v0, v8, v3

    add-int/lit8 v1, v29, 0x1

    aget v2, v8, v1

    invoke-virtual {v11, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    aget v0, v8, v3

    aget v1, v8, v1

    :goto_1ec
    move v7, v0

    move v6, v1

    goto/16 :goto_26d

    :cond_1f0
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    add-int/lit8 v3, v29, 0x0

    aget v1, v8, v3

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v1, v8, v3

    move v0, v1

    :goto_1ff
    add-float v6, v14, v0

    goto/16 :goto_26d

    :cond_203
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    add-int/lit8 v3, v29, 0x0

    aget v1, v8, v3

    add-int/lit8 v2, v29, 0x1

    aget v4, v8, v2

    add-int/lit8 v5, v29, 0x2

    aget v6, v8, v5

    add-int/lit8 v7, v29, 0x3

    aget v12, v8, v7

    invoke-virtual {v11, v1, v4, v6, v12}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    aget v1, v8, v3

    add-float/2addr v1, v0

    aget v2, v8, v2

    add-float/2addr v2, v14

    aget v3, v8, v5

    add-float/2addr v0, v3

    aget v3, v8, v7

    move v7, v0

    move v0, v3

    goto :goto_266

    :cond_228
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    add-int/lit8 v3, v29, 0x0

    aget v1, v8, v3

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v1, v8, v3

    add-float v7, v0, v1

    goto :goto_26d

    :cond_239
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    add-int/lit8 v3, v29, 0x0

    aget v2, v8, v3

    add-int/lit8 v3, v29, 0x1

    aget v3, v8, v3

    add-int/lit8 v12, v29, 0x2

    aget v4, v8, v12

    add-int/lit8 v15, v29, 0x3

    aget v5, v8, v15

    add-int/lit8 v24, v29, 0x4

    aget v6, v8, v24

    add-int/lit8 v25, v29, 0x5

    aget v7, v8, v25

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v1, v8, v12

    add-float/2addr v1, v0

    aget v2, v8, v15

    add-float/2addr v2, v14

    aget v3, v8, v24

    add-float v7, v0, v3

    aget v0, v8, v25

    :goto_266
    add-float v3, v14, v0

    move v4, v1

    move v5, v2

    move v2, v7

    :goto_26b
    move v7, v2

    move v6, v3

    :goto_26d
    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    goto/16 :goto_390

    :cond_275
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    add-int/lit8 v12, v29, 0x5

    aget v1, v8, v12

    add-float v4, v1, v0

    add-int/lit8 v15, v29, 0x6

    aget v1, v8, v15

    add-float v5, v1, v14

    add-int/lit8 v3, v29, 0x0

    aget v6, v8, v3

    add-int/lit8 v3, v29, 0x1

    aget v7, v8, v3

    add-int/lit8 v3, v29, 0x2

    aget v25, v8, v3

    add-int/lit8 v3, v29, 0x3

    aget v1, v8, v3

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_29d

    move/from16 v24, v16

    goto :goto_29f

    :cond_29d
    const/16 v24, 0x0

    :goto_29f
    add-int/lit8 v3, v29, 0x4

    aget v1, v8, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2aa

    move/from16 v26, v16

    goto :goto_2ac

    :cond_2aa
    const/16 v26, 0x0

    :goto_2ac
    move-object/from16 v1, p1

    move v2, v0

    move v3, v14

    move-object/from16 v27, v8

    move/from16 v8, v25

    move/from16 v25, v9

    move/from16 v9, v24

    move/from16 v28, v10

    move/from16 v10, v26

    invoke-static/range {v1 .. v10}, Lf0/h$a;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v1, v27, v12

    add-float v7, v0, v1

    aget v0, v27, v15

    add-float v6, v14, v0

    goto/16 :goto_38e

    :cond_2c9
    move/from16 v29, v3

    move v0, v7

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    add-int/lit8 v3, v29, 0x0

    aget v1, v27, v3

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    aget v6, v27, v3

    goto/16 :goto_390

    :cond_2dd
    move/from16 v29, v3

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    add-int/lit8 v3, v29, 0x0

    aget v0, v27, v3

    add-int/lit8 v1, v29, 0x1

    aget v2, v27, v1

    add-int/lit8 v4, v29, 0x2

    aget v5, v27, v4

    add-int/lit8 v6, v29, 0x3

    aget v7, v27, v6

    invoke-virtual {v11, v0, v2, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v0, v27, v3

    aget v1, v27, v1

    aget v2, v27, v4

    aget v3, v27, v6

    move v7, v2

    move v6, v3

    goto :goto_347

    :cond_303
    move/from16 v29, v3

    move v14, v6

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    add-int/lit8 v3, v29, 0x0

    aget v0, v27, v3

    invoke-virtual {v11, v0, v14}, Landroid/graphics/Path;->lineTo(FF)V

    aget v7, v27, v3

    goto/16 :goto_390

    :cond_317
    move/from16 v29, v3

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    add-int/lit8 v3, v29, 0x0

    aget v2, v27, v3

    add-int/lit8 v3, v29, 0x1

    aget v3, v27, v3

    add-int/lit8 v0, v29, 0x2

    aget v4, v27, v0

    add-int/lit8 v8, v29, 0x3

    aget v5, v27, v8

    add-int/lit8 v9, v29, 0x4

    aget v6, v27, v9

    add-int/lit8 v10, v29, 0x5

    aget v7, v27, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v1, v27, v9

    aget v2, v27, v10

    aget v0, v27, v0

    aget v3, v27, v8

    move v7, v1

    move v6, v2

    move v1, v3

    :goto_347
    move v4, v0

    move v5, v1

    goto :goto_390

    :cond_34a
    move/from16 v29, v3

    move v14, v6

    move v0, v7

    move-object/from16 v27, v8

    move/from16 v25, v9

    move/from16 v28, v10

    add-int/lit8 v12, v29, 0x5

    aget v4, v27, v12

    add-int/lit8 v15, v29, 0x6

    aget v5, v27, v15

    add-int/lit8 v3, v29, 0x0

    aget v6, v27, v3

    add-int/lit8 v3, v29, 0x1

    aget v7, v27, v3

    add-int/lit8 v3, v29, 0x2

    aget v8, v27, v3

    add-int/lit8 v3, v29, 0x3

    aget v1, v27, v3

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_374

    move/from16 v9, v16

    goto :goto_375

    :cond_374
    const/4 v9, 0x0

    :goto_375
    add-int/lit8 v3, v29, 0x4

    aget v1, v27, v3

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_380

    move/from16 v10, v16

    goto :goto_381

    :cond_380
    const/4 v10, 0x0

    :goto_381
    move-object/from16 v1, p1

    move v2, v0

    move v3, v14

    invoke-static/range {v1 .. v10}, Lf0/h$a;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v0, v27, v12

    aget v1, v27, v15

    move v7, v0

    move v6, v1

    :goto_38e
    move v5, v6

    move v4, v7

    :goto_390
    add-int v3, v29, v21

    move/from16 v1, v25

    move v9, v1

    move-object/from16 v8, v27

    move/from16 v10, v28

    const/4 v12, 0x6

    const/16 v14, 0x6d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_4f

    :cond_3a1
    move v14, v6

    move v0, v7

    move/from16 v28, v10

    move v1, v15

    aput v0, v13, v1

    aput v14, v13, v16

    aput v4, v13, v17

    aput v5, v13, v18

    aput v22, v13, v19

    aput v23, v13, v20

    aget-object v0, p0, v28

    iget-char v0, v0, Lf0/h$a;->a:C

    add-int/lit8 v10, v28, 0x1

    const/4 v12, 0x6

    const/16 v14, 0x6d

    move v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_c

    :cond_3c0
    return-void

    nop

    :sswitch_data_3c2
    .sparse-switch
        0x41 -> :sswitch_43
        0x43 -> :sswitch_40
        0x48 -> :sswitch_3d
        0x51 -> :sswitch_3a
        0x53 -> :sswitch_3a
        0x56 -> :sswitch_3d
        0x5a -> :sswitch_2f
        0x61 -> :sswitch_43
        0x63 -> :sswitch_40
        0x68 -> :sswitch_3d
        0x71 -> :sswitch_3a
        0x73 -> :sswitch_3a
        0x76 -> :sswitch_3d
        0x7a -> :sswitch_2f
    .end sparse-switch
.end method
