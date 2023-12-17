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
.method public constructor <init>(C[F)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-char p1, p0, Lf0/h$a;->a:C

    .line 3
    iput-object p2, p0, Lf0/h$a;->b:[F

    return-void
.end method

.method public constructor <init>(Lf0/h$a;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-char v0, p1, Lf0/h$a;->a:C

    iput-char v0, p0, Lf0/h$a;->a:C

    .line 6
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

    .line 1
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 2
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 3
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

    .line 4
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6b
    const-wide/high16 v38, 0x3ff0000000000000L  # 1.0

    div-double v42, v38, v12

    const-wide/high16 v44, 0x3fd0000000000000L  # 0.25

    sub-double v42, v42, v44

    cmpg-double v44, v42, v36

    if-gez v44, :cond_ae

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Points are too far apart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
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

    .line 7
    invoke-static/range {v0 .. v9}, Lf0/h$a;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    .line 8
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

    .line 9
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v1, v1, v34

    sub-double v12, v26, v30

    .line 10
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

    .line 11
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    .line 12
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 13
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 14
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 15
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

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 17
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

    .line 18
    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->tan(D)D

    move-result-wide v36

    .line 19
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

    .line 20
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

    .line 21
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

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v11, p1

    .line 5
    const/4 v12, 0x6

    .line 6
    new-array v13, v12, [F

    .line 8
    const/16 v14, 0x6d

    .line 10
    const/4 v15, 0x0

    .line 11
    move v1, v14

    .line 12
    move v10, v15

    .line 13
    :goto_c
    array-length v2, v0

    .line 14
    if-ge v10, v2, :cond_3c0

    .line 16
    aget-object v2, v0, v10

    .line 18
    iget-char v9, v2, Lf0/h$a;->a:C

    .line 20
    iget-object v8, v2, Lf0/h$a;->b:[F

    .line 22
    aget v2, v13, v15

    .line 24
    const/16 v16, 0x1

    .line 26
    aget v3, v13, v16

    .line 28
    const/16 v17, 0x2

    .line 30
    aget v4, v13, v17

    .line 32
    const/16 v18, 0x3

    .line 34
    aget v5, v13, v18

    .line 36
    const/16 v19, 0x4

    .line 38
    aget v6, v13, v19

    .line 40
    const/16 v20, 0x5

    .line 42
    aget v7, v13, v20

    .line 44
    sparse-switch v9, :sswitch_data_3c2

    .line 47
    goto :goto_46

    .line 48
    :sswitch_2f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 51
    invoke-virtual {v11, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 54
    move v2, v6

    .line 55
    move v4, v2

    .line 56
    move v3, v7

    .line 57
    move v5, v3

    .line 58
    goto :goto_46

    .line 59
    :sswitch_3a
    move/from16 v21, v19

    .line 61
    goto :goto_48

    .line 62
    :sswitch_3d
    move/from16 v21, v16

    .line 64
    goto :goto_48

    .line 65
    :sswitch_40
    move/from16 v21, v12

    .line 67
    goto :goto_48

    .line 68
    :sswitch_43
    const/16 v21, 0x7

    .line 70
    goto :goto_48

    .line 71
    :goto_46
    move/from16 v21, v17

    .line 73
    :goto_48
    move/from16 v22, v6

    .line 75
    move/from16 v23, v7

    .line 77
    move v7, v2

    .line 78
    move v6, v3

    .line 79
    move v3, v15

    .line 80
    :goto_4f
    array-length v2, v8

    .line 81
    if-ge v3, v2, :cond_3a1

    .line 83
    const/16 v2, 0x41

    .line 85
    if-eq v9, v2, :cond_34a

    .line 87
    const/16 v2, 0x43

    .line 89
    if-eq v9, v2, :cond_317

    .line 91
    const/16 v15, 0x48

    .line 93
    if-eq v9, v15, :cond_303

    .line 95
    const/16 v15, 0x51

    .line 97
    if-eq v9, v15, :cond_2dd

    .line 99
    const/16 v12, 0x56

    .line 101
    if-eq v9, v12, :cond_2c9

    .line 103
    const/16 v12, 0x61

    .line 105
    if-eq v9, v12, :cond_275

    .line 107
    const/16 v12, 0x63

    .line 109
    if-eq v9, v12, :cond_239

    .line 111
    const/16 v2, 0x68

    .line 113
    if-eq v9, v2, :cond_228

    .line 115
    const/16 v2, 0x71

    .line 117
    if-eq v9, v2, :cond_203

    .line 119
    const/16 v12, 0x76

    .line 121
    if-eq v9, v12, :cond_1f0

    .line 123
    const/16 v12, 0x4c

    .line 125
    if-eq v9, v12, :cond_1db

    .line 127
    const/16 v12, 0x4d

    .line 129
    if-eq v9, v12, :cond_1be

    .line 131
    const/16 v12, 0x73

    .line 133
    const/high16 v27, 0x40000000  # 2.0f

    .line 135
    const/16 v15, 0x53

    .line 137
    if-eq v9, v15, :cond_17f

    .line 139
    const/16 v15, 0x74

    .line 141
    const/16 v2, 0x54

    .line 143
    if-eq v9, v2, :cond_148

    .line 145
    const/16 v2, 0x6c

    .line 147
    if-eq v9, v2, :cond_131

    .line 149
    if-eq v9, v14, :cond_111

    .line 151
    if-eq v9, v12, :cond_ca

    .line 153
    if-eq v9, v15, :cond_9b

    .line 155
    goto :goto_c6

    .line 156
    :cond_9b
    const/16 v2, 0x71

    .line 158
    if-eq v1, v2, :cond_ad

    .line 160
    if-eq v1, v15, :cond_ad

    .line 162
    const/16 v2, 0x51

    .line 164
    if-eq v1, v2, :cond_ad

    .line 166
    const/16 v2, 0x54

    .line 168
    if-ne v1, v2, :cond_aa

    .line 170
    goto :goto_ad

    .line 171
    :cond_aa
    const/4 v1, 0x0

    .line 172
    const/4 v12, 0x0

    .line 173
    goto :goto_b1

    .line 174
    :cond_ad
    :goto_ad
    sub-float v12, v7, v4

    .line 176
    sub-float v1, v6, v5

    .line 178
    :goto_b1
    add-int/lit8 v2, v3, 0x0

    .line 180
    aget v4, v8, v2

    .line 182
    add-int/lit8 v5, v3, 0x1

    .line 184
    aget v15, v8, v5

    .line 186
    invoke-virtual {v11, v12, v1, v4, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 189
    add-float/2addr v12, v7

    .line 190
    add-float/2addr v1, v6

    .line 191
    aget v2, v8, v2

    .line 193
    add-float/2addr v7, v2

    .line 194
    aget v2, v8, v5

    .line 196
    add-float/2addr v6, v2

    .line 197
    move v5, v1

    .line 198
    move v4, v12

    .line 199
    :goto_c6
    move/from16 v29, v3

    .line 201
    goto/16 :goto_26d

    .line 203
    :cond_ca
    const/16 v2, 0x63

    .line 205
    if-eq v1, v2, :cond_dd

    .line 207
    if-eq v1, v12, :cond_dd

    .line 209
    const/16 v2, 0x43

    .line 211
    if-eq v1, v2, :cond_dd

    .line 213
    const/16 v2, 0x53

    .line 215
    if-ne v1, v2, :cond_d9

    .line 217
    goto :goto_dd

    .line 218
    :cond_d9
    const/4 v2, 0x0

    .line 219
    const/16 v24, 0x0

    .line 221
    goto :goto_e4

    .line 222
    :cond_dd
    :goto_dd
    sub-float v1, v7, v4

    .line 224
    sub-float v2, v6, v5

    .line 226
    move/from16 v24, v2

    .line 228
    move v2, v1

    .line 229
    :goto_e4
    add-int/lit8 v12, v3, 0x0

    .line 231
    aget v4, v8, v12

    .line 233
    add-int/lit8 v15, v3, 0x1

    .line 235
    aget v5, v8, v15

    .line 237
    add-int/lit8 v25, v3, 0x2

    .line 239
    aget v26, v8, v25

    .line 241
    add-int/lit8 v27, v3, 0x3

    .line 243
    aget v28, v8, v27

    .line 245
    move-object/from16 v1, p1

    .line 247
    move/from16 v29, v3

    .line 249
    move/from16 v3, v24

    .line 251
    move v14, v6

    .line 252
    move/from16 v6, v26

    .line 254
    move v0, v7

    .line 255
    move/from16 v7, v28

    .line 257
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 260
    aget v1, v8, v12

    .line 262
    add-float/2addr v1, v0

    .line 263
    aget v2, v8, v15

    .line 265
    add-float/2addr v2, v14

    .line 266
    aget v3, v8, v25

    .line 268
    add-float v7, v0, v3

    .line 270
    aget v0, v8, v27

    .line 272
    goto/16 :goto_266

    .line 274
    :cond_111
    move/from16 v29, v3

    .line 276
    move v14, v6

    .line 277
    move v0, v7

    .line 278
    add-int/lit8 v3, v29, 0x0

    .line 280
    aget v1, v8, v3

    .line 282
    add-float v7, v0, v1

    .line 284
    add-int/lit8 v3, v29, 0x1

    .line 286
    aget v0, v8, v3

    .line 288
    add-float v6, v14, v0

    .line 290
    if-lez v29, :cond_128

    .line 292
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 295
    goto/16 :goto_26d

    .line 297
    :cond_128
    invoke-virtual {v11, v1, v0}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 300
    move/from16 v23, v6

    .line 302
    move/from16 v22, v7

    .line 304
    goto/16 :goto_1d5

    .line 306
    :cond_131
    move/from16 v29, v3

    .line 308
    move v14, v6

    .line 309
    move v0, v7

    .line 310
    add-int/lit8 v3, v29, 0x0

    .line 312
    aget v1, v8, v3

    .line 314
    add-int/lit8 v2, v29, 0x1

    .line 316
    aget v6, v8, v2

    .line 318
    invoke-virtual {v11, v1, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 321
    aget v1, v8, v3

    .line 323
    add-float v7, v0, v1

    .line 325
    aget v0, v8, v2

    .line 327
    goto/16 :goto_1ff

    .line 329
    :cond_148
    move/from16 v29, v3

    .line 331
    move v14, v6

    .line 332
    move v0, v7

    .line 333
    const/16 v2, 0x71

    .line 335
    if-eq v1, v2, :cond_15e

    .line 337
    if-eq v1, v15, :cond_15e

    .line 339
    const/16 v2, 0x51

    .line 341
    if-eq v1, v2, :cond_15e

    .line 343
    const/16 v2, 0x54

    .line 345
    if-ne v1, v2, :cond_15b

    .line 347
    goto :goto_15e

    .line 348
    :cond_15b
    move v7, v0

    .line 349
    move v6, v14

    .line 350
    goto :goto_164

    .line 351
    :cond_15e
    :goto_15e
    mul-float v7, v0, v27

    .line 353
    sub-float/2addr v7, v4

    .line 354
    mul-float v6, v14, v27

    .line 356
    sub-float/2addr v6, v5

    .line 357
    :goto_164
    add-int/lit8 v3, v29, 0x0

    .line 359
    aget v0, v8, v3

    .line 361
    add-int/lit8 v1, v29, 0x1

    .line 363
    aget v2, v8, v1

    .line 365
    invoke-virtual {v11, v7, v6, v0, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 368
    aget v0, v8, v3

    .line 370
    aget v1, v8, v1

    .line 372
    move v5, v6

    .line 373
    move v4, v7

    .line 374
    move-object/from16 v27, v8

    .line 376
    move/from16 v25, v9

    .line 378
    move/from16 v28, v10

    .line 380
    move v7, v0

    .line 381
    move v6, v1

    .line 382
    goto/16 :goto_390

    .line 384
    :cond_17f
    move/from16 v29, v3

    .line 386
    move v14, v6

    .line 387
    move v0, v7

    .line 388
    const/16 v2, 0x63

    .line 390
    if-eq v1, v2, :cond_195

    .line 392
    if-eq v1, v12, :cond_195

    .line 394
    const/16 v2, 0x43

    .line 396
    if-eq v1, v2, :cond_195

    .line 398
    const/16 v2, 0x53

    .line 400
    if-ne v1, v2, :cond_192

    .line 402
    goto :goto_195

    .line 403
    :cond_192
    move v2, v0

    .line 404
    move v3, v14

    .line 405
    goto :goto_19d

    .line 406
    :cond_195
    :goto_195
    mul-float v7, v0, v27

    .line 408
    sub-float/2addr v7, v4

    .line 409
    mul-float v6, v14, v27

    .line 411
    sub-float/2addr v6, v5

    .line 412
    move v3, v6

    .line 413
    move v2, v7

    .line 414
    :goto_19d
    add-int/lit8 v0, v29, 0x0

    .line 416
    aget v4, v8, v0

    .line 418
    add-int/lit8 v12, v29, 0x1

    .line 420
    aget v5, v8, v12

    .line 422
    add-int/lit8 v14, v29, 0x2

    .line 424
    aget v6, v8, v14

    .line 426
    add-int/lit8 v15, v29, 0x3

    .line 428
    aget v7, v8, v15

    .line 430
    move-object/from16 v1, p1

    .line 432
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 435
    aget v0, v8, v0

    .line 437
    aget v1, v8, v12

    .line 439
    aget v2, v8, v14

    .line 441
    aget v3, v8, v15

    .line 443
    move v4, v0

    .line 444
    move v5, v1

    .line 445
    goto/16 :goto_26b

    .line 447
    :cond_1be
    move/from16 v29, v3

    .line 449
    add-int/lit8 v3, v29, 0x0

    .line 451
    aget v0, v8, v3

    .line 453
    add-int/lit8 v3, v29, 0x1

    .line 455
    aget v1, v8, v3

    .line 457
    if-lez v29, :cond_1ce

    .line 459
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 462
    goto :goto_1ec

    .line 463
    :cond_1ce
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 466
    move/from16 v22, v0

    .line 468
    move/from16 v23, v1

    .line 470
    :goto_1d5
    move/from16 v7, v22

    .line 472
    move/from16 v6, v23

    .line 474
    goto/16 :goto_26d

    .line 476
    :cond_1db
    move/from16 v29, v3

    .line 478
    add-int/lit8 v3, v29, 0x0

    .line 480
    aget v0, v8, v3

    .line 482
    add-int/lit8 v1, v29, 0x1

    .line 484
    aget v2, v8, v1

    .line 486
    invoke-virtual {v11, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 489
    aget v0, v8, v3

    .line 491
    aget v1, v8, v1

    .line 493
    :goto_1ec
    move v7, v0

    .line 494
    move v6, v1

    .line 495
    goto/16 :goto_26d

    .line 497
    :cond_1f0
    move/from16 v29, v3

    .line 499
    move v14, v6

    .line 500
    move v0, v7

    .line 501
    add-int/lit8 v3, v29, 0x0

    .line 503
    aget v1, v8, v3

    .line 505
    const/4 v2, 0x0

    .line 506
    invoke-virtual {v11, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 509
    aget v1, v8, v3

    .line 511
    move v0, v1

    .line 512
    :goto_1ff
    add-float v6, v14, v0

    .line 514
    goto/16 :goto_26d

    .line 516
    :cond_203
    move/from16 v29, v3

    .line 518
    move v14, v6

    .line 519
    move v0, v7

    .line 520
    add-int/lit8 v3, v29, 0x0

    .line 522
    aget v1, v8, v3

    .line 524
    add-int/lit8 v2, v29, 0x1

    .line 526
    aget v4, v8, v2

    .line 528
    add-int/lit8 v5, v29, 0x2

    .line 530
    aget v6, v8, v5

    .line 532
    add-int/lit8 v7, v29, 0x3

    .line 534
    aget v12, v8, v7

    .line 536
    invoke-virtual {v11, v1, v4, v6, v12}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 539
    aget v1, v8, v3

    .line 541
    add-float/2addr v1, v0

    .line 542
    aget v2, v8, v2

    .line 544
    add-float/2addr v2, v14

    .line 545
    aget v3, v8, v5

    .line 547
    add-float/2addr v0, v3

    .line 548
    aget v3, v8, v7

    .line 550
    move v7, v0

    .line 551
    move v0, v3

    .line 552
    goto :goto_266

    .line 553
    :cond_228
    move/from16 v29, v3

    .line 555
    move v14, v6

    .line 556
    move v0, v7

    .line 557
    add-int/lit8 v3, v29, 0x0

    .line 559
    aget v1, v8, v3

    .line 561
    const/4 v2, 0x0

    .line 562
    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 565
    aget v1, v8, v3

    .line 567
    add-float v7, v0, v1

    .line 569
    goto :goto_26d

    .line 570
    :cond_239
    move/from16 v29, v3

    .line 572
    move v14, v6

    .line 573
    move v0, v7

    .line 574
    add-int/lit8 v3, v29, 0x0

    .line 576
    aget v2, v8, v3

    .line 578
    add-int/lit8 v3, v29, 0x1

    .line 580
    aget v3, v8, v3

    .line 582
    add-int/lit8 v12, v29, 0x2

    .line 584
    aget v4, v8, v12

    .line 586
    add-int/lit8 v15, v29, 0x3

    .line 588
    aget v5, v8, v15

    .line 590
    add-int/lit8 v24, v29, 0x4

    .line 592
    aget v6, v8, v24

    .line 594
    add-int/lit8 v25, v29, 0x5

    .line 596
    aget v7, v8, v25

    .line 598
    move-object/from16 v1, p1

    .line 600
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 603
    aget v1, v8, v12

    .line 605
    add-float/2addr v1, v0

    .line 606
    aget v2, v8, v15

    .line 608
    add-float/2addr v2, v14

    .line 609
    aget v3, v8, v24

    .line 611
    add-float v7, v0, v3

    .line 613
    aget v0, v8, v25

    .line 615
    :goto_266
    add-float v3, v14, v0

    .line 617
    move v4, v1

    .line 618
    move v5, v2

    .line 619
    move v2, v7

    .line 620
    :goto_26b
    move v7, v2

    .line 621
    move v6, v3

    .line 622
    :goto_26d
    move-object/from16 v27, v8

    .line 624
    move/from16 v25, v9

    .line 626
    move/from16 v28, v10

    .line 628
    goto/16 :goto_390

    .line 630
    :cond_275
    move/from16 v29, v3

    .line 632
    move v14, v6

    .line 633
    move v0, v7

    .line 634
    add-int/lit8 v12, v29, 0x5

    .line 636
    aget v1, v8, v12

    .line 638
    add-float v4, v1, v0

    .line 640
    add-int/lit8 v15, v29, 0x6

    .line 642
    aget v1, v8, v15

    .line 644
    add-float v5, v1, v14

    .line 646
    add-int/lit8 v3, v29, 0x0

    .line 648
    aget v6, v8, v3

    .line 650
    add-int/lit8 v3, v29, 0x1

    .line 652
    aget v7, v8, v3

    .line 654
    add-int/lit8 v3, v29, 0x2

    .line 656
    aget v25, v8, v3

    .line 658
    add-int/lit8 v3, v29, 0x3

    .line 660
    aget v1, v8, v3

    .line 662
    const/4 v2, 0x0

    .line 663
    cmpl-float v1, v1, v2

    .line 665
    if-eqz v1, :cond_29d

    .line 667
    move/from16 v24, v16

    .line 669
    goto :goto_29f

    .line 670
    :cond_29d
    const/16 v24, 0x0

    .line 672
    :goto_29f
    add-int/lit8 v3, v29, 0x4

    .line 674
    aget v1, v8, v3

    .line 676
    cmpl-float v1, v1, v2

    .line 678
    if-eqz v1, :cond_2aa

    .line 680
    move/from16 v26, v16

    .line 682
    goto :goto_2ac

    .line 683
    :cond_2aa
    const/16 v26, 0x0

    .line 685
    :goto_2ac
    move-object/from16 v1, p1

    .line 687
    move v2, v0

    .line 688
    move v3, v14

    .line 689
    move-object/from16 v27, v8

    .line 691
    move/from16 v8, v25

    .line 693
    move/from16 v25, v9

    .line 695
    move/from16 v9, v24

    .line 697
    move/from16 v28, v10

    .line 699
    move/from16 v10, v26

    .line 701
    invoke-static/range {v1 .. v10}, Lf0/h$a;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 704
    aget v1, v27, v12

    .line 706
    add-float v7, v0, v1

    .line 708
    aget v0, v27, v15

    .line 710
    add-float v6, v14, v0

    .line 712
    goto/16 :goto_38e

    .line 714
    :cond_2c9
    move/from16 v29, v3

    .line 716
    move v0, v7

    .line 717
    move-object/from16 v27, v8

    .line 719
    move/from16 v25, v9

    .line 721
    move/from16 v28, v10

    .line 723
    add-int/lit8 v3, v29, 0x0

    .line 725
    aget v1, v27, v3

    .line 727
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 730
    aget v6, v27, v3

    .line 732
    goto/16 :goto_390

    .line 734
    :cond_2dd
    move/from16 v29, v3

    .line 736
    move-object/from16 v27, v8

    .line 738
    move/from16 v25, v9

    .line 740
    move/from16 v28, v10

    .line 742
    add-int/lit8 v3, v29, 0x0

    .line 744
    aget v0, v27, v3

    .line 746
    add-int/lit8 v1, v29, 0x1

    .line 748
    aget v2, v27, v1

    .line 750
    add-int/lit8 v4, v29, 0x2

    .line 752
    aget v5, v27, v4

    .line 754
    add-int/lit8 v6, v29, 0x3

    .line 756
    aget v7, v27, v6

    .line 758
    invoke-virtual {v11, v0, v2, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 761
    aget v0, v27, v3

    .line 763
    aget v1, v27, v1

    .line 765
    aget v2, v27, v4

    .line 767
    aget v3, v27, v6

    .line 769
    move v7, v2

    .line 770
    move v6, v3

    .line 771
    goto :goto_347

    .line 772
    :cond_303
    move/from16 v29, v3

    .line 774
    move v14, v6

    .line 775
    move-object/from16 v27, v8

    .line 777
    move/from16 v25, v9

    .line 779
    move/from16 v28, v10

    .line 781
    add-int/lit8 v3, v29, 0x0

    .line 783
    aget v0, v27, v3

    .line 785
    invoke-virtual {v11, v0, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 788
    aget v7, v27, v3

    .line 790
    goto/16 :goto_390

    .line 792
    :cond_317
    move/from16 v29, v3

    .line 794
    move-object/from16 v27, v8

    .line 796
    move/from16 v25, v9

    .line 798
    move/from16 v28, v10

    .line 800
    add-int/lit8 v3, v29, 0x0

    .line 802
    aget v2, v27, v3

    .line 804
    add-int/lit8 v3, v29, 0x1

    .line 806
    aget v3, v27, v3

    .line 808
    add-int/lit8 v0, v29, 0x2

    .line 810
    aget v4, v27, v0

    .line 812
    add-int/lit8 v8, v29, 0x3

    .line 814
    aget v5, v27, v8

    .line 816
    add-int/lit8 v9, v29, 0x4

    .line 818
    aget v6, v27, v9

    .line 820
    add-int/lit8 v10, v29, 0x5

    .line 822
    aget v7, v27, v10

    .line 824
    move-object/from16 v1, p1

    .line 826
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 829
    aget v1, v27, v9

    .line 831
    aget v2, v27, v10

    .line 833
    aget v0, v27, v0

    .line 835
    aget v3, v27, v8

    .line 837
    move v7, v1

    .line 838
    move v6, v2

    .line 839
    move v1, v3

    .line 840
    :goto_347
    move v4, v0

    .line 841
    move v5, v1

    .line 842
    goto :goto_390

    .line 843
    :cond_34a
    move/from16 v29, v3

    .line 845
    move v14, v6

    .line 846
    move v0, v7

    .line 847
    move-object/from16 v27, v8

    .line 849
    move/from16 v25, v9

    .line 851
    move/from16 v28, v10

    .line 853
    add-int/lit8 v12, v29, 0x5

    .line 855
    aget v4, v27, v12

    .line 857
    add-int/lit8 v15, v29, 0x6

    .line 859
    aget v5, v27, v15

    .line 861
    add-int/lit8 v3, v29, 0x0

    .line 863
    aget v6, v27, v3

    .line 865
    add-int/lit8 v3, v29, 0x1

    .line 867
    aget v7, v27, v3

    .line 869
    add-int/lit8 v3, v29, 0x2

    .line 871
    aget v8, v27, v3

    .line 873
    add-int/lit8 v3, v29, 0x3

    .line 875
    aget v1, v27, v3

    .line 877
    const/4 v2, 0x0

    .line 878
    cmpl-float v1, v1, v2

    .line 880
    if-eqz v1, :cond_374

    .line 882
    move/from16 v9, v16

    .line 884
    goto :goto_375

    .line 885
    :cond_374
    const/4 v9, 0x0

    .line 886
    :goto_375
    add-int/lit8 v3, v29, 0x4

    .line 888
    aget v1, v27, v3

    .line 890
    cmpl-float v1, v1, v2

    .line 892
    if-eqz v1, :cond_380

    .line 894
    move/from16 v10, v16

    .line 896
    goto :goto_381

    .line 897
    :cond_380
    const/4 v10, 0x0

    .line 898
    :goto_381
    move-object/from16 v1, p1

    .line 900
    move v2, v0

    .line 901
    move v3, v14

    .line 902
    invoke-static/range {v1 .. v10}, Lf0/h$a;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 905
    aget v0, v27, v12

    .line 907
    aget v1, v27, v15

    .line 909
    move v7, v0

    .line 910
    move v6, v1

    .line 911
    :goto_38e
    move v5, v6

    .line 912
    move v4, v7

    .line 913
    :goto_390
    add-int v3, v29, v21

    .line 915
    move/from16 v1, v25

    .line 917
    move v9, v1

    .line 918
    move-object/from16 v8, v27

    .line 920
    move/from16 v10, v28

    .line 922
    const/4 v12, 0x6

    .line 923
    const/16 v14, 0x6d

    .line 925
    const/4 v15, 0x0

    .line 926
    move-object/from16 v0, p0

    .line 928
    goto/16 :goto_4f

    .line 930
    :cond_3a1
    move v14, v6

    .line 931
    move v0, v7

    .line 932
    move/from16 v28, v10

    .line 934
    move v1, v15

    .line 935
    aput v0, v13, v1

    .line 937
    aput v14, v13, v16

    .line 939
    aput v4, v13, v17

    .line 941
    aput v5, v13, v18

    .line 943
    aput v22, v13, v19

    .line 945
    aput v23, v13, v20

    .line 947
    aget-object v0, p0, v28

    .line 949
    iget-char v0, v0, Lf0/h$a;->a:C

    .line 951
    add-int/lit8 v10, v28, 0x1

    .line 953
    const/4 v12, 0x6

    .line 954
    const/16 v14, 0x6d

    .line 956
    move v1, v0

    .line 957
    move-object/from16 v0, p0

    .line 959
    goto/16 :goto_c

    .line 961
    :cond_3c0
    return-void

    .line 962
    nop

    .line 963
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
