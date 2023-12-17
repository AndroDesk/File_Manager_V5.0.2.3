.class final Landroidx/core/content/res/ViewingConditions;
.super Ljava/lang/Object;
.source "ViewingConditions.java"


# static fields
.field public static final DEFAULT:Landroidx/core/content/res/ViewingConditions;


# instance fields
.field private final mAw:F

.field private final mC:F

.field private final mFl:F

.field private final mFlRoot:F

.field private final mN:F

.field private final mNbb:F

.field private final mNc:F

.field private final mNcb:F

.field private final mRgbD:[F

.field private final mZ:F


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1
    sget-object v0, Landroidx/core/content/res/CamUtils;->WHITE_POINT_D65:[F

    .line 3
    const/high16 v1, 0x42480000  # 50.0f

    .line 5
    invoke-static {v1}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    .line 8
    move-result v2

    .line 9
    float-to-double v2, v2

    .line 10
    const-wide v4, 0x404fd4bbab8b494cL  # 63.66197723675813

    .line 15
    mul-double/2addr v2, v4

    .line 16
    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    .line 18
    div-double/2addr v2, v4

    .line 19
    double-to-float v2, v2

    .line 20
    const/high16 v3, 0x40000000  # 2.0f

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v0, v2, v1, v3, v4}, Landroidx/core/content/res/ViewingConditions;->make([FFFFZ)Landroidx/core/content/res/ViewingConditions;

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    .line 29
    return-void
.end method

.method private constructor <init>(FFFFFF[FFFF)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 6
    iput p2, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 8
    iput p3, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 10
    iput p4, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 12
    iput p5, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 14
    iput p6, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 16
    iput-object p7, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 18
    iput p8, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 20
    iput p9, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 22
    iput p10, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 24
    return-void
.end method

.method public static make([FFFFZ)Landroidx/core/content/res/ViewingConditions;
    .registers 26

    .line 1
    move/from16 v0, p1

    .line 3
    sget-object v1, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    .line 5
    const/4 v2, 0x0

    .line 6
    aget v3, p0, v2

    .line 8
    aget-object v4, v1, v2

    .line 10
    aget v5, v4, v2

    .line 12
    mul-float/2addr v5, v3

    .line 13
    const/4 v6, 0x1

    .line 14
    aget v7, p0, v6

    .line 16
    aget v8, v4, v6

    .line 18
    mul-float/2addr v8, v7

    .line 19
    add-float/2addr v8, v5

    .line 20
    const/4 v5, 0x2

    .line 21
    aget v9, p0, v5

    .line 23
    aget v4, v4, v5

    .line 25
    mul-float/2addr v4, v9

    .line 26
    add-float/2addr v4, v8

    .line 27
    aget-object v8, v1, v6

    .line 29
    aget v10, v8, v2

    .line 31
    mul-float/2addr v10, v3

    .line 32
    aget v11, v8, v6

    .line 34
    mul-float/2addr v11, v7

    .line 35
    add-float/2addr v11, v10

    .line 36
    aget v8, v8, v5

    .line 38
    mul-float/2addr v8, v9

    .line 39
    add-float/2addr v8, v11

    .line 40
    aget-object v1, v1, v5

    .line 42
    aget v10, v1, v2

    .line 44
    mul-float/2addr v3, v10

    .line 45
    aget v10, v1, v6

    .line 47
    mul-float/2addr v7, v10

    .line 48
    add-float/2addr v7, v3

    .line 49
    aget v1, v1, v5

    .line 51
    mul-float/2addr v9, v1

    .line 52
    add-float/2addr v9, v7

    .line 53
    const/high16 v1, 0x41200000  # 10.0f

    .line 55
    div-float v3, p3, v1

    .line 57
    const v7, 0x3f4ccccd  # 0.8f

    .line 60
    add-float/2addr v3, v7

    .line 61
    float-to-double v10, v3

    .line 62
    const-wide v12, 0x3feccccccccccccdL  # 0.9

    .line 67
    cmpl-double v10, v10, v12

    .line 69
    const v11, 0x3f170a3d  # 0.59f

    .line 72
    if-ltz v10, :cond_57

    .line 74
    const v7, 0x3f30a3d7  # 0.69f

    .line 77
    const v10, 0x3f666666  # 0.9f

    .line 80
    sub-float v10, v3, v10

    .line 82
    mul-float/2addr v10, v1

    .line 83
    invoke-static {v11, v7, v10}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    .line 86
    move-result v1

    .line 87
    goto :goto_61

    .line 88
    :cond_57
    const v10, 0x3f066666  # 0.525f

    .line 91
    sub-float v7, v3, v7

    .line 93
    mul-float/2addr v7, v1

    .line 94
    invoke-static {v10, v11, v7}, Landroidx/core/content/res/CamUtils;->lerp(FFF)F

    .line 97
    move-result v1

    .line 98
    :goto_61
    move v15, v1

    .line 99
    const/high16 v1, 0x3f800000  # 1.0f

    .line 101
    if-eqz p4, :cond_68

    .line 103
    move v7, v1

    .line 104
    goto :goto_7c

    .line 105
    :cond_68
    const v7, 0x3e8e38e4

    .line 108
    neg-float v10, v0

    .line 109
    const/high16 v11, 0x42280000  # 42.0f

    .line 111
    sub-float/2addr v10, v11

    .line 112
    const/high16 v11, 0x42b80000  # 92.0f

    .line 114
    div-float/2addr v10, v11

    .line 115
    float-to-double v10, v10

    .line 116
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    .line 119
    move-result-wide v10

    .line 120
    double-to-float v10, v10

    .line 121
    mul-float/2addr v10, v7

    .line 122
    sub-float v7, v1, v10

    .line 124
    mul-float/2addr v7, v3

    .line 125
    :goto_7c
    float-to-double v10, v7

    .line 126
    const-wide/high16 v12, 0x3ff0000000000000L  # 1.0

    .line 128
    cmpl-double v12, v10, v12

    .line 130
    if-lez v12, :cond_85

    .line 132
    move v7, v1

    .line 133
    goto :goto_8c

    .line 134
    :cond_85
    const-wide/16 v12, 0x0

    .line 136
    cmpg-double v10, v10, v12

    .line 138
    if-gez v10, :cond_8c

    .line 140
    const/4 v7, 0x0

    .line 141
    :cond_8c
    :goto_8c
    const/4 v10, 0x3

    .line 142
    new-array v14, v10, [F

    .line 144
    const/high16 v11, 0x42c80000  # 100.0f

    .line 146
    div-float v12, v11, v4

    .line 148
    mul-float/2addr v12, v7

    .line 149
    add-float/2addr v12, v1

    .line 150
    sub-float/2addr v12, v7

    .line 151
    aput v12, v14, v2

    .line 153
    div-float v12, v11, v8

    .line 155
    mul-float/2addr v12, v7

    .line 156
    add-float/2addr v12, v1

    .line 157
    sub-float/2addr v12, v7

    .line 158
    aput v12, v14, v6

    .line 160
    div-float/2addr v11, v9

    .line 161
    mul-float/2addr v11, v7

    .line 162
    add-float/2addr v11, v1

    .line 163
    sub-float/2addr v11, v7

    .line 164
    aput v11, v14, v5

    .line 166
    const/high16 v7, 0x40a00000  # 5.0f

    .line 168
    mul-float/2addr v7, v0

    .line 169
    add-float/2addr v7, v1

    .line 170
    div-float v7, v1, v7

    .line 172
    mul-float v11, v7, v7

    .line 174
    mul-float/2addr v11, v7

    .line 175
    mul-float/2addr v11, v7

    .line 176
    sub-float/2addr v1, v11

    .line 177
    mul-float/2addr v11, v0

    .line 178
    const v7, 0x3dcccccd  # 0.1f

    .line 181
    mul-float/2addr v7, v1

    .line 182
    mul-float/2addr v7, v1

    .line 183
    const-wide/high16 v12, 0x4014000000000000L  # 5.0

    .line 185
    float-to-double v0, v0

    .line 186
    mul-double/2addr v0, v12

    .line 187
    invoke-static {v0, v1}, Ljava/lang/Math;->cbrt(D)D

    .line 190
    move-result-wide v0

    .line 191
    double-to-float v0, v0

    .line 192
    mul-float/2addr v7, v0

    .line 193
    add-float v0, v7, v11

    .line 195
    invoke-static/range {p2 .. p2}, Landroidx/core/content/res/CamUtils;->yFromLStar(F)F

    .line 198
    move-result v1

    .line 199
    aget v7, p0, v6

    .line 201
    div-float v11, v1, v7

    .line 203
    const v1, 0x3fbd70a4  # 1.48f

    .line 206
    float-to-double v12, v11

    .line 207
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 210
    move-result-wide v5

    .line 211
    double-to-float v5, v5

    .line 212
    add-float v20, v5, v1

    .line 214
    const v1, 0x3f39999a  # 0.725f

    .line 217
    const-wide v5, 0x3fc999999999999aL  # 0.2

    .line 222
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 225
    move-result-wide v5

    .line 226
    double-to-float v5, v5

    .line 227
    div-float/2addr v1, v5

    .line 228
    new-array v5, v10, [F

    .line 230
    aget v6, v14, v2

    .line 232
    mul-float/2addr v6, v0

    .line 233
    mul-float/2addr v6, v4

    .line 234
    float-to-double v12, v6

    .line 235
    const-wide/high16 v17, 0x4059000000000000L  # 100.0

    .line 237
    div-double v12, v12, v17

    .line 239
    move v4, v8

    .line 240
    const-wide v7, 0x3fdae147ae147ae1L  # 0.42

    .line 245
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 248
    move-result-wide v12

    .line 249
    double-to-float v6, v12

    .line 250
    aput v6, v5, v2

    .line 252
    const/4 v6, 0x1

    .line 253
    aget v10, v14, v6

    .line 255
    mul-float/2addr v10, v0

    .line 256
    mul-float/2addr v10, v4

    .line 257
    float-to-double v12, v10

    .line 258
    div-double v12, v12, v17

    .line 260
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 263
    move-result-wide v12

    .line 264
    double-to-float v4, v12

    .line 265
    aput v4, v5, v6

    .line 267
    const/4 v4, 0x2

    .line 268
    aget v10, v14, v4

    .line 270
    mul-float/2addr v10, v0

    .line 271
    mul-float/2addr v10, v9

    .line 272
    float-to-double v9, v10

    .line 273
    div-double v9, v9, v17

    .line 275
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 278
    move-result-wide v7

    .line 279
    double-to-float v7, v7

    .line 280
    aput v7, v5, v4

    .line 282
    aget v2, v5, v2

    .line 284
    const/high16 v4, 0x43c80000  # 400.0f

    .line 286
    mul-float v8, v2, v4

    .line 288
    const v9, 0x41d90a3d  # 27.13f

    .line 291
    add-float/2addr v2, v9

    .line 292
    div-float/2addr v8, v2

    .line 293
    const/4 v2, 0x1

    .line 294
    aget v2, v5, v2

    .line 296
    mul-float v5, v2, v4

    .line 298
    add-float/2addr v2, v9

    .line 299
    div-float/2addr v5, v2

    .line 300
    mul-float/2addr v4, v7

    .line 301
    add-float/2addr v7, v9

    .line 302
    div-float/2addr v4, v7

    .line 303
    const/high16 v2, 0x40000000  # 2.0f

    .line 305
    mul-float/2addr v8, v2

    .line 306
    add-float/2addr v8, v5

    .line 307
    const v2, 0x3d4ccccd  # 0.05f

    .line 310
    mul-float/2addr v4, v2

    .line 311
    add-float/2addr v4, v8

    .line 312
    mul-float v12, v4, v1

    .line 314
    new-instance v2, Landroidx/core/content/res/ViewingConditions;

    .line 316
    float-to-double v4, v0

    .line 317
    const-wide/high16 v6, 0x3fd0000000000000L  # 0.25

    .line 319
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 322
    move-result-wide v4

    .line 323
    double-to-float v4, v4

    .line 324
    move-object v10, v2

    .line 325
    move v13, v1

    .line 326
    move-object v5, v14

    .line 327
    move v14, v1

    .line 328
    move/from16 v16, v3

    .line 330
    move-object/from16 v17, v5

    .line 332
    move/from16 v18, v0

    .line 334
    move/from16 v19, v4

    .line 336
    invoke-direct/range {v10 .. v20}, Landroidx/core/content/res/ViewingConditions;-><init>(FFFFFF[FFFF)V

    .line 339
    return-object v2
.end method


# virtual methods
.method public getAw()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mAw:F

    .line 3
    return v0
.end method

.method public getC()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mC:F

    .line 3
    return v0
.end method

.method public getFl()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFl:F

    .line 3
    return v0
.end method

.method public getFlRoot()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mFlRoot:F

    .line 3
    return v0
.end method

.method public getN()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mN:F

    .line 3
    return v0
.end method

.method public getNbb()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNbb:F

    .line 3
    return v0
.end method

.method public getNc()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNc:F

    .line 3
    return v0
.end method

.method public getNcb()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mNcb:F

    .line 3
    return v0
.end method

.method public getRgbD()[F
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/core/content/res/ViewingConditions;->mRgbD:[F

    .line 3
    return-object v0
.end method

.method public getZ()F
    .registers 2

    .line 1
    iget v0, p0, Landroidx/core/content/res/ViewingConditions;->mZ:F

    .line 3
    return v0
.end method
