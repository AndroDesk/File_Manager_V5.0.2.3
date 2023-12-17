.class Landroidx/core/content/res/CamColor;
.super Ljava/lang/Object;
.source "CamColor.java"


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final mAstar:F

.field private final mBstar:F

.field private final mChroma:F

.field private final mHue:F

.field private final mJ:F

.field private final mJstar:F

.field private final mM:F

.field private final mQ:F

.field private final mS:F


# direct methods
.method public constructor <init>(FFFFFFFFF)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 6
    iput p2, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 8
    iput p3, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 10
    iput p4, p0, Landroidx/core/content/res/CamColor;->mQ:F

    .line 12
    iput p5, p0, Landroidx/core/content/res/CamColor;->mM:F

    .line 14
    iput p6, p0, Landroidx/core/content/res/CamColor;->mS:F

    .line 16
    iput p7, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 18
    iput p8, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 20
    iput p9, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 22
    return-void
.end method

.method private static findCamByJ(FFF)Landroidx/core/content/res/CamColor;
    .registers 15

    .line 1
    const/high16 v0, 0x447a0000  # 1000.0f

    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x42c80000  # 100.0f

    .line 6
    const/4 v3, 0x0

    .line 7
    move v5, v1

    .line 8
    move-object v4, v3

    .line 9
    move v3, v2

    .line 10
    move v2, v0

    .line 11
    :goto_a
    sub-float v6, v5, v3

    .line 13
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 16
    move-result v6

    .line 17
    const v7, 0x3c23d70a  # 0.01f

    .line 20
    cmpl-float v6, v6, v7

    .line 22
    if-lez v6, :cond_64

    .line 24
    sub-float v6, v3, v5

    .line 26
    const/high16 v7, 0x40000000  # 2.0f

    .line 28
    div-float/2addr v6, v7

    .line 29
    add-float/2addr v6, v5

    .line 30
    invoke-static {v6, p1, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->viewedInSrgb()I

    .line 37
    move-result v7

    .line 38
    invoke-static {v7}, Landroidx/core/content/res/CamUtils;->lStarFromInt(I)F

    .line 41
    move-result v8

    .line 42
    sub-float v9, p2, v8

    .line 44
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 47
    move-result v9

    .line 48
    const v10, 0x3e4ccccd  # 0.2f

    .line 51
    cmpg-float v10, v9, v10

    .line 53
    if-gez v10, :cond_53

    .line 55
    invoke-static {v7}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getJ()F

    .line 62
    move-result v10

    .line 63
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getChroma()F

    .line 66
    move-result v11

    .line 67
    invoke-static {v10, v11, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v7, v10}, Landroidx/core/content/res/CamColor;->distance(Landroidx/core/content/res/CamColor;)F

    .line 74
    move-result v10

    .line 75
    const/high16 v11, 0x3f800000  # 1.0f

    .line 77
    cmpg-float v11, v10, v11

    .line 79
    if-gtz v11, :cond_53

    .line 81
    move-object v4, v7

    .line 82
    move v0, v9

    .line 83
    move v2, v10

    .line 84
    :cond_53
    cmpl-float v7, v0, v1

    .line 86
    if-nez v7, :cond_5c

    .line 88
    cmpl-float v7, v2, v1

    .line 90
    if-nez v7, :cond_5c

    .line 92
    goto :goto_64

    .line 93
    :cond_5c
    cmpg-float v7, v8, p2

    .line 95
    if-gez v7, :cond_62

    .line 97
    move v5, v6

    .line 98
    goto :goto_a

    .line 99
    :cond_62
    move v3, v6

    .line 100
    goto :goto_a

    .line 101
    :cond_64
    :goto_64
    return-object v4
.end method

.method public static fromColor(I)Landroidx/core/content/res/CamColor;
    .registers 2

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/res/CamColor;->fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .registers 25

    .line 1
    invoke-static/range {p0 .. p0}, Landroidx/core/content/res/CamUtils;->xyzFromInt(I)[F

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 7
    const/4 v2, 0x0

    .line 8
    aget v3, v0, v2

    .line 10
    aget-object v4, v1, v2

    .line 12
    aget v5, v4, v2

    .line 14
    mul-float/2addr v5, v3

    .line 15
    const/4 v6, 0x1

    .line 16
    aget v7, v0, v6

    .line 18
    aget v8, v4, v6

    .line 20
    mul-float/2addr v8, v7

    .line 21
    add-float/2addr v8, v5

    .line 22
    const/4 v5, 0x2

    .line 23
    aget v0, v0, v5

    .line 25
    aget v4, v4, v5

    .line 27
    mul-float/2addr v4, v0

    .line 28
    add-float/2addr v4, v8

    .line 29
    aget-object v8, v1, v6

    .line 31
    aget v9, v8, v2

    .line 33
    mul-float/2addr v9, v3

    .line 34
    aget v10, v8, v6

    .line 36
    mul-float/2addr v10, v7

    .line 37
    add-float/2addr v10, v9

    .line 38
    aget v8, v8, v5

    .line 40
    mul-float/2addr v8, v0

    .line 41
    add-float/2addr v8, v10

    .line 42
    aget-object v1, v1, v5

    .line 44
    aget v9, v1, v2

    .line 46
    mul-float/2addr v3, v9

    .line 47
    aget v9, v1, v6

    .line 49
    mul-float/2addr v7, v9

    .line 50
    add-float/2addr v7, v3

    .line 51
    aget v1, v1, v5

    .line 53
    mul-float/2addr v0, v1

    .line 54
    add-float/2addr v0, v7

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 58
    move-result-object v1

    .line 59
    aget v1, v1, v2

    .line 61
    mul-float/2addr v1, v4

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 65
    move-result-object v2

    .line 66
    aget v2, v2, v6

    .line 68
    mul-float/2addr v2, v8

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 72
    move-result-object v3

    .line 73
    aget v3, v3, v5

    .line 75
    mul-float/2addr v3, v0

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 79
    move-result v0

    .line 80
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 83
    move-result v4

    .line 84
    mul-float/2addr v4, v0

    .line 85
    float-to-double v4, v4

    .line 86
    const-wide/high16 v6, 0x4059000000000000L  # 100.0

    .line 88
    div-double/2addr v4, v6

    .line 89
    const-wide v8, 0x3fdae147ae147ae1L  # 0.42

    .line 94
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 97
    move-result-wide v4

    .line 98
    double-to-float v0, v4

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 102
    move-result v4

    .line 103
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 106
    move-result v5

    .line 107
    mul-float/2addr v5, v4

    .line 108
    float-to-double v4, v5

    .line 109
    div-double/2addr v4, v6

    .line 110
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 113
    move-result-wide v4

    .line 114
    double-to-float v4, v4

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 118
    move-result v5

    .line 119
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 122
    move-result v10

    .line 123
    mul-float/2addr v10, v5

    .line 124
    float-to-double v10, v10

    .line 125
    div-double/2addr v10, v6

    .line 126
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 129
    move-result-wide v8

    .line 130
    double-to-float v5, v8

    .line 131
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 134
    move-result v1

    .line 135
    const/high16 v8, 0x43c80000  # 400.0f

    .line 137
    mul-float/2addr v1, v8

    .line 138
    mul-float/2addr v1, v0

    .line 139
    const v9, 0x41d90a3d  # 27.13f

    .line 142
    add-float/2addr v0, v9

    .line 143
    div-float/2addr v1, v0

    .line 144
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 147
    move-result v0

    .line 148
    mul-float/2addr v0, v8

    .line 149
    mul-float/2addr v0, v4

    .line 150
    add-float/2addr v4, v9

    .line 151
    div-float/2addr v0, v4

    .line 152
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 155
    move-result v2

    .line 156
    mul-float/2addr v2, v8

    .line 157
    mul-float/2addr v2, v5

    .line 158
    add-float/2addr v5, v9

    .line 159
    div-float/2addr v2, v5

    .line 160
    float-to-double v3, v1

    .line 161
    const-wide/high16 v8, 0x4026000000000000L  # 11.0

    .line 163
    mul-double/2addr v3, v8

    .line 164
    float-to-double v8, v0

    .line 165
    const-wide/high16 v10, -0x3fd8000000000000L  # -12.0

    .line 167
    mul-double/2addr v8, v10

    .line 168
    add-double/2addr v8, v3

    .line 169
    float-to-double v3, v2

    .line 170
    add-double/2addr v8, v3

    .line 171
    double-to-float v5, v8

    .line 172
    const/high16 v8, 0x41300000  # 11.0f

    .line 174
    div-float/2addr v5, v8

    .line 175
    add-float v8, v1, v0

    .line 177
    float-to-double v8, v8

    .line 178
    const-wide/high16 v10, 0x4000000000000000L  # 2.0

    .line 180
    mul-double/2addr v3, v10

    .line 181
    sub-double/2addr v8, v3

    .line 182
    double-to-float v3, v8

    .line 183
    const/high16 v4, 0x41100000  # 9.0f

    .line 185
    div-float/2addr v3, v4

    .line 186
    const/high16 v4, 0x41a00000  # 20.0f

    .line 188
    mul-float v8, v1, v4

    .line 190
    mul-float/2addr v0, v4

    .line 191
    add-float/2addr v8, v0

    .line 192
    const/high16 v9, 0x41a80000  # 21.0f

    .line 194
    mul-float/2addr v9, v2

    .line 195
    add-float/2addr v9, v8

    .line 196
    div-float/2addr v9, v4

    .line 197
    const/high16 v8, 0x42200000  # 40.0f

    .line 199
    mul-float/2addr v1, v8

    .line 200
    add-float/2addr v1, v0

    .line 201
    add-float/2addr v1, v2

    .line 202
    div-float/2addr v1, v4

    .line 203
    float-to-double v12, v3

    .line 204
    float-to-double v14, v5

    .line 205
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    .line 208
    move-result-wide v12

    .line 209
    double-to-float v0, v12

    .line 210
    const/high16 v2, 0x43340000  # 180.0f

    .line 212
    mul-float/2addr v0, v2

    .line 213
    const v4, 0x40490fdb  # (float)Math.PI

    .line 216
    div-float/2addr v0, v4

    .line 217
    const/4 v8, 0x0

    .line 218
    cmpg-float v8, v0, v8

    .line 220
    const/high16 v12, 0x43b40000  # 360.0f

    .line 222
    if-gez v8, :cond_e2

    .line 224
    add-float/2addr v0, v12

    .line 225
    :cond_e0
    :goto_e0
    move v14, v0

    .line 226
    goto :goto_e8

    .line 227
    :cond_e2
    cmpl-float v8, v0, v12

    .line 229
    if-ltz v8, :cond_e0

    .line 231
    sub-float/2addr v0, v12

    .line 232
    goto :goto_e0

    .line 233
    :goto_e8
    mul-float/2addr v4, v14

    .line 234
    div-float/2addr v4, v2

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    .line 238
    move-result v0

    .line 239
    mul-float/2addr v1, v0

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 243
    move-result v0

    .line 244
    div-float/2addr v1, v0

    .line 245
    float-to-double v0, v1

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 249
    move-result v2

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    .line 253
    move-result v8

    .line 254
    mul-float/2addr v2, v8

    .line 255
    float-to-double v6, v2

    .line 256
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 259
    move-result-wide v0

    .line 260
    double-to-float v0, v0

    .line 261
    const/high16 v1, 0x42c80000  # 100.0f

    .line 263
    mul-float/2addr v0, v1

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 267
    move-result v2

    .line 268
    const/high16 v6, 0x40800000  # 4.0f

    .line 270
    div-float v2, v6, v2

    .line 272
    div-float v1, v0, v1

    .line 274
    float-to-double v7, v1

    .line 275
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 278
    move-result-wide v7

    .line 279
    double-to-float v1, v7

    .line 280
    mul-float/2addr v2, v1

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 284
    move-result v1

    .line 285
    add-float/2addr v1, v6

    .line 286
    mul-float/2addr v1, v2

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    .line 290
    move-result v2

    .line 291
    mul-float v17, v1, v2

    .line 293
    float-to-double v1, v14

    .line 294
    const-wide v7, 0x403423d70a3d70a4L  # 20.14

    .line 299
    cmpg-double v1, v1, v7

    .line 301
    if-gez v1, :cond_130

    .line 303
    add-float/2addr v12, v14

    .line 304
    goto :goto_131

    .line 305
    :cond_130
    move v12, v14

    .line 306
    :goto_131
    const/high16 v1, 0x3e800000  # 0.25f

    .line 308
    float-to-double v7, v12

    .line 309
    const-wide v12, 0x400921fb54442d18L  # Math.PI

    .line 314
    mul-double/2addr v7, v12

    .line 315
    const-wide v12, 0x4066800000000000L  # 180.0

    .line 320
    div-double/2addr v7, v12

    .line 321
    add-double/2addr v7, v10

    .line 322
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 325
    move-result-wide v7

    .line 326
    const-wide v10, 0x400e666666666666L  # 3.8

    .line 331
    add-double/2addr v7, v10

    .line 332
    double-to-float v2, v7

    .line 333
    mul-float/2addr v2, v1

    .line 334
    const v1, 0x45706276

    .line 337
    mul-float/2addr v2, v1

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    .line 341
    move-result v1

    .line 342
    mul-float/2addr v2, v1

    .line 343
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    .line 346
    move-result v1

    .line 347
    mul-float/2addr v2, v1

    .line 348
    mul-float/2addr v5, v5

    .line 349
    mul-float/2addr v3, v3

    .line 350
    add-float/2addr v3, v5

    .line 351
    float-to-double v7, v3

    .line 352
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 355
    move-result-wide v7

    .line 356
    double-to-float v1, v7

    .line 357
    mul-float/2addr v2, v1

    .line 358
    const v1, 0x3e9c28f6  # 0.305f

    .line 361
    add-float/2addr v9, v1

    .line 362
    div-float/2addr v2, v9

    .line 363
    const-wide v7, 0x3ffa3d70a3d70a3dL  # 1.64

    .line 368
    const-wide v9, 0x3fd28f5c28f5c28fL  # 0.29

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    .line 376
    move-result v1

    .line 377
    float-to-double v11, v1

    .line 378
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 381
    move-result-wide v9

    .line 382
    sub-double/2addr v7, v9

    .line 383
    const-wide v9, 0x3fe75c28f5c28f5cL  # 0.73

    .line 388
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    .line 391
    move-result-wide v7

    .line 392
    double-to-float v1, v7

    .line 393
    float-to-double v2, v2

    .line 394
    const-wide v7, 0x3feccccccccccccdL  # 0.9

    .line 399
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 402
    move-result-wide v2

    .line 403
    double-to-float v2, v2

    .line 404
    mul-float/2addr v1, v2

    .line 405
    float-to-double v2, v0

    .line 406
    const-wide/high16 v7, 0x4059000000000000L  # 100.0

    .line 408
    div-double/2addr v2, v7

    .line 409
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 412
    move-result-wide v2

    .line 413
    double-to-float v2, v2

    .line 414
    mul-float v15, v1, v2

    .line 416
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    .line 419
    move-result v2

    .line 420
    mul-float v18, v15, v2

    .line 422
    const/high16 v2, 0x42480000  # 50.0f

    .line 424
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 427
    move-result v3

    .line 428
    mul-float/2addr v1, v3

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 432
    move-result v3

    .line 433
    add-float/2addr v3, v6

    .line 434
    div-float/2addr v1, v3

    .line 435
    float-to-double v5, v1

    .line 436
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 439
    move-result-wide v5

    .line 440
    double-to-float v1, v5

    .line 441
    mul-float v19, v1, v2

    .line 443
    const v1, 0x3fd9999a  # 1.7f

    .line 446
    mul-float/2addr v1, v0

    .line 447
    const v2, 0x3be56042  # 0.007f

    .line 450
    mul-float/2addr v2, v0

    .line 451
    const/high16 v3, 0x3f800000  # 1.0f

    .line 453
    add-float/2addr v2, v3

    .line 454
    div-float v20, v1, v2

    .line 456
    const v1, 0x422f7048

    .line 459
    const v2, 0x3cbac711  # 0.0228f

    .line 462
    mul-float v2, v2, v18

    .line 464
    add-float/2addr v2, v3

    .line 465
    float-to-double v2, v2

    .line 466
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 469
    move-result-wide v2

    .line 470
    double-to-float v2, v2

    .line 471
    mul-float/2addr v2, v1

    .line 472
    float-to-double v3, v4

    .line 473
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 476
    move-result-wide v5

    .line 477
    double-to-float v1, v5

    .line 478
    mul-float v21, v2, v1

    .line 480
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 483
    move-result-wide v3

    .line 484
    double-to-float v1, v3

    .line 485
    mul-float v22, v2, v1

    .line 487
    new-instance v1, Landroidx/core/content/res/CamColor;

    .line 489
    move-object v13, v1

    .line 490
    move/from16 v16, v0

    .line 492
    invoke-direct/range {v13 .. v22}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    .line 495
    return-object v1
.end method

.method private static fromJch(FFF)Landroidx/core/content/res/CamColor;
    .registers 4

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 3
    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .registers 17

    .line 1
    move v3, p0

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 5
    move-result v0

    .line 6
    const/high16 v1, 0x40800000  # 4.0f

    .line 8
    div-float v0, v1, v0

    .line 10
    float-to-double v4, v3

    .line 11
    const-wide/high16 v6, 0x4059000000000000L  # 100.0

    .line 13
    div-double/2addr v4, v6

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 17
    move-result-wide v6

    .line 18
    double-to-float v2, v6

    .line 19
    mul-float/2addr v0, v2

    .line 20
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 23
    move-result v2

    .line 24
    add-float/2addr v2, v1

    .line 25
    mul-float/2addr v2, v0

    .line 26
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    .line 29
    move-result v0

    .line 30
    mul-float v6, v2, v0

    .line 32
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    .line 35
    move-result v0

    .line 36
    mul-float v7, p1, v0

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 41
    move-result-wide v4

    .line 42
    double-to-float v0, v4

    .line 43
    div-float v0, p1, v0

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 48
    move-result v2

    .line 49
    mul-float/2addr v0, v2

    .line 50
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 53
    move-result v2

    .line 54
    add-float/2addr v2, v1

    .line 55
    div-float/2addr v0, v2

    .line 56
    float-to-double v0, v0

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 60
    move-result-wide v0

    .line 61
    double-to-float v0, v0

    .line 62
    const/high16 v1, 0x42480000  # 50.0f

    .line 64
    mul-float v8, v0, v1

    .line 66
    const v0, 0x40490fdb  # (float)Math.PI

    .line 69
    mul-float/2addr v0, p2

    .line 70
    const/high16 v1, 0x43340000  # 180.0f

    .line 72
    div-float/2addr v0, v1

    .line 73
    const v1, 0x3fd9999a  # 1.7f

    .line 76
    mul-float/2addr v1, v3

    .line 77
    const v2, 0x3be56042  # 0.007f

    .line 80
    mul-float/2addr v2, v3

    .line 81
    const/high16 v4, 0x3f800000  # 1.0f

    .line 83
    add-float/2addr v2, v4

    .line 84
    div-float v9, v1, v2

    .line 86
    float-to-double v1, v7

    .line 87
    const-wide v4, 0x3f9758e219652bd4L  # 0.0228

    .line 92
    mul-double/2addr v1, v4

    .line 93
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 95
    add-double/2addr v1, v4

    .line 96
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    .line 99
    move-result-wide v1

    .line 100
    double-to-float v1, v1

    .line 101
    const v2, 0x422f7048

    .line 104
    mul-float/2addr v1, v2

    .line 105
    float-to-double v4, v0

    .line 106
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 109
    move-result-wide v10

    .line 110
    double-to-float v0, v10

    .line 111
    mul-float v10, v1, v0

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 116
    move-result-wide v4

    .line 117
    double-to-float v0, v4

    .line 118
    mul-float v11, v1, v0

    .line 120
    new-instance v12, Landroidx/core/content/res/CamColor;

    .line 122
    move-object v0, v12

    .line 123
    move v1, p2

    .line 124
    move v2, p1

    .line 125
    move v4, v6

    .line 126
    move v5, v7

    .line 127
    move v6, v8

    .line 128
    move v7, v9

    .line 129
    move v8, v10

    .line 130
    move v9, v11

    .line 131
    invoke-direct/range {v0 .. v9}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    .line 134
    return-object v12
.end method

.method public static toColor(FFF)I
    .registers 4

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->toColor(FFFLandroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0
.end method

.method public static toColor(FFFLandroidx/core/content/res/ViewingConditions;)I
    .registers 10

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_66

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_66

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1e

    goto :goto_66

    :cond_1e
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_25

    move p0, v0

    goto :goto_2b

    :cond_25
    const/high16 v1, 0x43b40000  # 360.0f

    .line 3
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_2b
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    move v1, v0

    move v0, p1

    :goto_31
    sub-float v4, v1, p1

    .line 4
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ecccccd  # 0.4f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5a

    .line 5
    invoke-static {p0, v0, p2}, Landroidx/core/content/res/CamColor;->findCamByJ(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v4

    const/high16 v5, 0x40000000  # 2.0f

    if-eqz v2, :cond_53

    if-eqz v4, :cond_4d

    .line 6
    invoke-virtual {v4, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    sub-float v0, p1, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    goto :goto_31

    :cond_53
    if-nez v4, :cond_57

    move p1, v0

    goto :goto_4e

    :cond_57
    move v1, v0

    move-object v3, v4

    goto :goto_4e

    :cond_5a
    if-nez v3, :cond_61

    .line 7
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result p0

    return p0

    .line 8
    :cond_61
    invoke-virtual {v3, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0

    .line 9
    :cond_66
    :goto_66
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public distance(Landroidx/core/content/res/CamColor;)F
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJStar()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getJStar()F

    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getAStar()F

    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getAStar()F

    .line 17
    move-result v2

    .line 18
    sub-float/2addr v1, v2

    .line 19
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getBStar()F

    .line 22
    move-result v2

    .line 23
    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getBStar()F

    .line 26
    move-result p1

    .line 27
    sub-float/2addr v2, p1

    .line 28
    mul-float/2addr v0, v0

    .line 29
    mul-float/2addr v1, v1

    .line 30
    add-float/2addr v1, v0

    .line 31
    mul-float/2addr v2, v2

    .line 32
    add-float/2addr v2, v1

    .line 33
    float-to-double v0, v2

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 37
    move-result-wide v0

    .line 38
    const-wide v2, 0x3fe428f5c28f5c29L  # 0.63

    .line 43
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 46
    move-result-wide v0

    .line 47
    const-wide v2, 0x3ff68f5c28f5c28fL  # 1.41

    .line 52
    mul-double/2addr v0, v2

    .line 53
    double-to-float p1, v0

    .line 54
    return p1
.end method

.method public getAStar()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    .line 3
    return v0
.end method

.method public getBStar()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    .line 3
    return v0
.end method

.method public getChroma()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    .line 3
    return v0
.end method

.method public getHue()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mHue:F

    .line 3
    return v0
.end method

.method public getJ()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJ:F

    .line 3
    return v0
.end method

.method public getJStar()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    .line 3
    return v0
.end method

.method public getM()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mM:F

    .line 3
    return v0
.end method

.method public getQ()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mQ:F

    .line 3
    return v0
.end method

.method public getS()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/CamColor;->mS:F

    .line 3
    return v0
.end method

.method public viewed(Landroidx/core/content/res/ViewingConditions;)I
    .registers 17

    .line 1
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    const-wide/16 v2, 0x0

    .line 8
    cmpl-double v0, v0, v2

    .line 10
    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    .line 12
    if-eqz v0, :cond_28

    .line 14
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    .line 17
    move-result v0

    .line 18
    float-to-double v0, v0

    .line 19
    cmpl-double v0, v0, v2

    .line 21
    if-nez v0, :cond_17

    .line 23
    goto :goto_28

    .line 24
    :cond_17
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    .line 31
    move-result v1

    .line 32
    float-to-double v6, v1

    .line 33
    div-double/2addr v6, v4

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 37
    move-result-wide v6

    .line 38
    double-to-float v1, v6

    .line 39
    div-float/2addr v0, v1

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    :goto_28
    const/4 v0, 0x0

    .line 42
    :goto_29
    float-to-double v0, v0

    .line 43
    const-wide v6, 0x3ffa3d70a3d70a3dL  # 1.64

    .line 48
    const-wide v8, 0x3fd28f5c28f5c28fL  # 0.29

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    .line 56
    move-result v10

    .line 57
    float-to-double v10, v10

    .line 58
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 61
    move-result-wide v8

    .line 62
    sub-double/2addr v6, v8

    .line 63
    const-wide v8, 0x3fe75c28f5c28f5cL  # 0.73

    .line 68
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 71
    move-result-wide v6

    .line 72
    div-double/2addr v0, v6

    .line 73
    const-wide v6, 0x3ff1c71c71c71c72L  # 1.1111111111111112

    .line 78
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 81
    move-result-wide v0

    .line 82
    double-to-float v0, v0

    .line 83
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getHue()F

    .line 86
    move-result v1

    .line 87
    const v6, 0x40490fdb  # (float)Math.PI

    .line 90
    mul-float/2addr v1, v6

    .line 91
    const/high16 v6, 0x43340000  # 180.0f

    .line 93
    div-float/2addr v1, v6

    .line 94
    const/high16 v6, 0x3e800000  # 0.25f

    .line 96
    float-to-double v7, v1

    .line 97
    const-wide/high16 v9, 0x4000000000000000L  # 2.0

    .line 99
    add-double/2addr v9, v7

    .line 100
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 103
    move-result-wide v9

    .line 104
    const-wide v11, 0x400e666666666666L  # 3.8

    .line 109
    add-double/2addr v9, v11

    .line 110
    double-to-float v1, v9

    .line 111
    mul-float/2addr v1, v6

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    .line 115
    move-result v6

    .line 116
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    .line 119
    move-result v9

    .line 120
    float-to-double v9, v9

    .line 121
    div-double/2addr v9, v4

    .line 122
    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    .line 127
    move-result v11

    .line 128
    float-to-double v11, v11

    .line 129
    div-double/2addr v4, v11

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    .line 133
    move-result v11

    .line 134
    float-to-double v11, v11

    .line 135
    div-double/2addr v4, v11

    .line 136
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 139
    move-result-wide v4

    .line 140
    double-to-float v4, v4

    .line 141
    mul-float/2addr v6, v4

    .line 142
    const v4, 0x45706276

    .line 145
    mul-float/2addr v1, v4

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    .line 149
    move-result v4

    .line 150
    mul-float/2addr v1, v4

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    .line 154
    move-result v4

    .line 155
    mul-float/2addr v1, v4

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    .line 159
    move-result v4

    .line 160
    div-float/2addr v6, v4

    .line 161
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    .line 164
    move-result-wide v4

    .line 165
    double-to-float v4, v4

    .line 166
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 169
    move-result-wide v7

    .line 170
    double-to-float v5, v7

    .line 171
    const v7, 0x3e9c28f6  # 0.305f

    .line 174
    add-float/2addr v7, v6

    .line 175
    const/high16 v8, 0x41b80000  # 23.0f

    .line 177
    mul-float/2addr v7, v8

    .line 178
    mul-float/2addr v7, v0

    .line 179
    mul-float/2addr v1, v8

    .line 180
    const/high16 v8, 0x41300000  # 11.0f

    .line 182
    mul-float/2addr v8, v0

    .line 183
    mul-float/2addr v8, v5

    .line 184
    add-float/2addr v8, v1

    .line 185
    const/high16 v1, 0x42d80000  # 108.0f

    .line 187
    mul-float/2addr v0, v1

    .line 188
    mul-float/2addr v0, v4

    .line 189
    add-float/2addr v0, v8

    .line 190
    div-float/2addr v7, v0

    .line 191
    mul-float/2addr v5, v7

    .line 192
    mul-float/2addr v7, v4

    .line 193
    const/high16 v0, 0x43e60000  # 460.0f

    .line 195
    mul-float/2addr v6, v0

    .line 196
    const v0, 0x43e18000  # 451.0f

    .line 199
    mul-float/2addr v0, v5

    .line 200
    add-float/2addr v0, v6

    .line 201
    const/high16 v1, 0x43900000  # 288.0f

    .line 203
    mul-float/2addr v1, v7

    .line 204
    add-float/2addr v1, v0

    .line 205
    const v0, 0x44af6000  # 1403.0f

    .line 208
    div-float/2addr v1, v0

    .line 209
    const v4, 0x445ec000  # 891.0f

    .line 212
    mul-float/2addr v4, v5

    .line 213
    sub-float v4, v6, v4

    .line 215
    const v8, 0x43828000  # 261.0f

    .line 218
    mul-float/2addr v8, v7

    .line 219
    sub-float/2addr v4, v8

    .line 220
    div-float/2addr v4, v0

    .line 221
    const/high16 v8, 0x435c0000  # 220.0f

    .line 223
    mul-float/2addr v5, v8

    .line 224
    sub-float/2addr v6, v5

    .line 225
    const v5, 0x45c4e000  # 6300.0f

    .line 228
    mul-float/2addr v7, v5

    .line 229
    sub-float/2addr v6, v7

    .line 230
    div-float/2addr v6, v0

    .line 231
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 234
    move-result v0

    .line 235
    float-to-double v7, v0

    .line 236
    const-wide v9, 0x403b2147ae147ae1L  # 27.13

    .line 241
    mul-double/2addr v7, v9

    .line 242
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 245
    move-result v0

    .line 246
    float-to-double v11, v0

    .line 247
    const-wide/high16 v13, 0x4079000000000000L  # 400.0

    .line 249
    sub-double v11, v13, v11

    .line 251
    div-double/2addr v7, v11

    .line 252
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(DD)D

    .line 255
    move-result-wide v7

    .line 256
    double-to-float v0, v7

    .line 257
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    .line 260
    move-result v1

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 264
    move-result v5

    .line 265
    const/high16 v7, 0x42c80000  # 100.0f

    .line 267
    div-float v5, v7, v5

    .line 269
    mul-float/2addr v5, v1

    .line 270
    float-to-double v0, v0

    .line 271
    const-wide v11, 0x40030c30c30c30c3L  # 2.380952380952381

    .line 276
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 279
    move-result-wide v0

    .line 280
    double-to-float v0, v0

    .line 281
    mul-float/2addr v5, v0

    .line 282
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 285
    move-result v0

    .line 286
    float-to-double v0, v0

    .line 287
    mul-double/2addr v0, v9

    .line 288
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 291
    move-result v8

    .line 292
    float-to-double v9, v8

    .line 293
    sub-double v8, v13, v9

    .line 295
    div-double/2addr v0, v8

    .line 296
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 299
    move-result-wide v0

    .line 300
    double-to-float v0, v0

    .line 301
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 304
    move-result v1

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 308
    move-result v4

    .line 309
    div-float v4, v7, v4

    .line 311
    mul-float/2addr v4, v1

    .line 312
    float-to-double v0, v0

    .line 313
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 316
    move-result-wide v0

    .line 317
    double-to-float v0, v0

    .line 318
    mul-float/2addr v4, v0

    .line 319
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 322
    move-result v0

    .line 323
    float-to-double v0, v0

    .line 324
    const-wide v8, 0x403b2147ae147ae1L  # 27.13

    .line 329
    mul-double/2addr v0, v8

    .line 330
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 333
    move-result v8

    .line 334
    float-to-double v8, v8

    .line 335
    sub-double/2addr v13, v8

    .line 336
    div-double/2addr v0, v13

    .line 337
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    .line 340
    move-result-wide v0

    .line 341
    double-to-float v0, v0

    .line 342
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 345
    move-result v1

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    .line 349
    move-result v2

    .line 350
    div-float/2addr v7, v2

    .line 351
    mul-float/2addr v7, v1

    .line 352
    float-to-double v0, v0

    .line 353
    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 356
    move-result-wide v0

    .line 357
    double-to-float v0, v0

    .line 358
    mul-float/2addr v7, v0

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 362
    move-result-object v0

    .line 363
    const/4 v1, 0x0

    .line 364
    aget v0, v0, v1

    .line 366
    div-float/2addr v5, v0

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 370
    move-result-object v0

    .line 371
    const/4 v2, 0x1

    .line 372
    aget v0, v0, v2

    .line 374
    div-float/2addr v4, v0

    .line 375
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    .line 378
    move-result-object v0

    .line 379
    const/4 v3, 0x2

    .line 380
    aget v0, v0, v3

    .line 382
    div-float/2addr v7, v0

    .line 383
    sget-object v0, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 385
    aget-object v6, v0, v1

    .line 387
    aget v8, v6, v1

    .line 389
    mul-float/2addr v8, v5

    .line 390
    aget v9, v6, v2

    .line 392
    mul-float/2addr v9, v4

    .line 393
    add-float/2addr v9, v8

    .line 394
    aget v6, v6, v3

    .line 396
    mul-float/2addr v6, v7

    .line 397
    add-float/2addr v6, v9

    .line 398
    aget-object v8, v0, v2

    .line 400
    aget v9, v8, v1

    .line 402
    mul-float/2addr v9, v5

    .line 403
    aget v10, v8, v2

    .line 405
    mul-float/2addr v10, v4

    .line 406
    add-float/2addr v10, v9

    .line 407
    aget v8, v8, v3

    .line 409
    mul-float/2addr v8, v7

    .line 410
    add-float/2addr v8, v10

    .line 411
    aget-object v0, v0, v3

    .line 413
    aget v1, v0, v1

    .line 415
    mul-float/2addr v5, v1

    .line 416
    aget v1, v0, v2

    .line 418
    mul-float/2addr v4, v1

    .line 419
    add-float/2addr v4, v5

    .line 420
    aget v0, v0, v3

    .line 422
    mul-float/2addr v7, v0

    .line 423
    add-float/2addr v7, v4

    .line 424
    float-to-double v0, v6

    .line 425
    float-to-double v2, v8

    .line 426
    float-to-double v4, v7

    .line 427
    invoke-static/range {v0 .. v5}, Lf0/d;->a(DDD)I

    .line 430
    move-result v0

    .line 431
    return v0
.end method

.method public viewedInSrgb()I
    .registers 2

    .line 1
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
